#include "mainwindow.h"
#include "workerthread.h"
#include <QApplication>

#include <QThread>
#include <QWaitCondition>
#include <QDebug>

int main(int argc, char *argv[])
{
    // GUI Main Thread
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    // Serial Communication Threading
    QThread serialThread;
    WorkerThread workThread;
    workThread.doSetup(serialThread);
    workThread.moveToThread(&serialThread);

    w.setWorkerThread(&workThread);

    serialThread.start();


    return a.exec();
}
