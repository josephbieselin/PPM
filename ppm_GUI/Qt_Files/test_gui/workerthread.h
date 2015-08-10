#ifndef WORKERTHREAD_H
#define WORKERTHREAD_H

#include <QObject>
#include <QThread>
#include <QSerialPort>


class WorkerThread : public QObject
{
    Q_OBJECT

public:
    // Constructor and Destructor
    explicit WorkerThread(QObject *parent = 0);
//    ~WorkerThread();

    // Connects the start of cThread to the doWork() function
    void doSetup(QThread &cThread);

    // Sets readWrite to 0 indicating a read over the serial port should happen
    void setRead();

    // Sets readWrite to 1 indicating a write over the serial port should happen
    void setWrite();

    // Sets writeData to whatever QString is passed in
    void setWriteData(const QString& newData);

    // Sets oldData to whatever QString is passed in
    void setOldData(const QString& newData);

    // Sets stop to true so the thread will stop running
    void stopThread();

    /* Called when the P1 End Turn button is pressed
     * Based on the data passed in, a code will be written over the serial port
     * that will indicate which action should be taken by the external board;
     * Changes produced by this function will affect the loop in doWork()
     */
    void endTurnP1(const QString &data);

    /* Called when the P1 Play button is pressed
     * A code will be written over the serial port that will indicate which
     * action should be taken by the external board.
     */
    void nextTurnP1();

    /* Called when the P2 Play button is pressed
     * A code will be written over the serial port that will indicate which
     * action should be taken by the external board.
     */
    void nextTurnP2();

private:
    int readWrite;
    QString writeData;
    QString oldData;
    bool stop;
//    QSerialPort serPort;

signals:
    // Signal will be emitted when a line of data was read from the serial port
    void serialCommDone(QString);

public slots:
    /* doWork manages serial communication with threading
     * readWrite denotes reading with 0 and writing with a 1
     * writeData is an empty string by default since readWrite defaults to 0 for reading
     * oldData will be used for comparison to see if any new data has been read from the serial communication
     *
     * doWork can read in a line of data from a serial communication port and emit with serialCommDone
     * doWork can write a QString to the serial communication port
     */
    void doWork();
};

#endif // WORKERTHREAD_H
