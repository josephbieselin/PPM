#include "workerthread.h"

#include <QDebug>
#include <QtSerialPort/QSerialPort>
#include <QThread>


#define TIMEOUT_MS 1000
// First FPGA serial communication port number
#define PORT1 "COM11"
// Second FPGA serial communication port number
#define PORT2 "COM7"

// Codes received corresponding to what action the player performed
#define SKIP        "00"
#define DIRECT_D0   "10"
#define DIRECT_D1   "11"
#define DIRECT_D2   "12"
#define DIRECT_D3   "13"
#define ADD_D0      "20"
#define ADD_D1      "21"
#define ADD_D2      "22"
#define ADD_D3      "23"

// Codes that will be sent over serial communication representing player actions
#define SEND_SKIP   "1"
#define SEND_DD0    "2"
#define SEND_DD1    "3"
#define SEND_DD2    "4"
#define SEND_DD3    "5"
#define SEND_AD0    "6"
#define SEND_AD1    "7"
#define SEND_AD2    "8"
#define SEND_AD3    "9"
#define SEND_P1P    "a"
#define SEND_P2P    "b"



/*******************************************************************\
 ************************* PUBLIC FUNCTIONS ************************\
 *******************************************************************/

WorkerThread::WorkerThread(QObject *parent) : QObject(parent)
{
    this->readWrite = 0;
    this->writeData = "";
    this->oldData   = "";
    this->stop      = false;
}

void WorkerThread::doSetup(QThread& cThread)
{
    connect(&cThread, SIGNAL(started()), this, SLOT(doWork()));
}

void WorkerThread::setRead()
{
    this->readWrite = 0;
}

void WorkerThread::setWrite()
{
    this->readWrite = 1;
}

void WorkerThread::setWriteData(const QString& newData)
{
    this->writeData = newData;
}

void WorkerThread::setOldData(const QString &newData)
{
    this->oldData = newData;
}

void WorkerThread::stopThread()
{
    this->stop = true;
}

void WorkerThread::endTurnP1(const QString& data)
{
    if (data == SKIP)
        setWriteData(SEND_SKIP);

    else if (data == DIRECT_D0)
        setWriteData(SEND_DD0);
    else if (data == DIRECT_D1)
        setWriteData(SEND_DD1);
    else if (data == DIRECT_D2)
        setWriteData(SEND_DD2);
    else if (data == DIRECT_D3)
        setWriteData(SEND_DD3);

    else if (data == ADD_D0)
        setWriteData(SEND_AD0);
    else if (data == ADD_D1)
        setWriteData(SEND_AD1);
    else if (data == ADD_D2)
        setWriteData(SEND_AD2);
    else // (data == ADD_D3)
        setWriteData(SEND_AD3);

    setWrite();
}

void WorkerThread::nextTurnP1()
{
    setWriteData(SEND_P1P);
    setWrite();
}

void WorkerThread::nextTurnP2()
{
    setWriteData(SEND_P2P);
    setWrite();
}



/*******************************************************************\
 ******************************* SLOTS *****************************\
 *******************************************************************/

void WorkerThread::doWork()
{
    QSerialPort serPort(PORT1);

    serPort.open(QIODevice::ReadWrite);

    QString fpgaData;

    // WorkerThread will run the loop until it is told to stop
    while (!stop) {
        // Wait until there's something to read when we want to read
        if (readWrite == 0 && serPort.waitForReadyRead(TIMEOUT_MS)) {
            // Start reading once there's a newline char
            if (serPort.canReadLine()) {
                // Reads once a newline char is detected in the buffer
                fpgaData = serPort.readLine();

                // If the data read has not changed from the last iteration, there is no work to be done
                if (fpgaData != oldData) {

                    qDebug() << "Data Read = " << fpgaData;

                    // Update oldData so that it can be tested for in the next iteration
                    oldData = fpgaData;

                    // Emit that serial communication has finished
                    emit serialCommDone(fpgaData);
                }
            }
        }

        // Write data if readWrite is 1
        if (readWrite == 1) {
            // Write data to the serial port and flush it to ensure all data is transmitted
            serPort.write(writeData.toStdString().c_str());
            serPort.flush();
            // Set readWrite to 0 so that the same data is not written constantly
            setRead();

        }
    }

    serPort.close();
}
