#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
#include <QStringList>


class WorkerThread;
class QLabel;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    // Constructor and Destructor
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    /* Sets up a connection between the WorkerThread and the main GUI
     * Connects the thread's serialCommDone signal to newDataRead() so that
     * whenever new data is finished being read from the serial port, the GUI
     * is updated to show necessary changes.
     */
    void setWorkerThread(WorkerThread *thread);

    /* Returns a QString that follows a colon in data
     * which has the format "beforeColon:afterColon"
     */
    QString getPostColonValue(const QString& data);

    void updateDisplay(QLabel* disp, const QStringList& data);

    // Updates the display values with strings from a QStringList
    void updateDisplays(const QStringList& dispListData);

    // Updates the GUI based on new data read from the serial communication port
    void updateGUI(QStringList& data);

private:
    Ui::MainWindow *ui;
    WorkerThread *t;

public slots:
    // Base function for handling when new data is read from the serial port
    void newDataRead(QString);

    // Fuctions for buttons pressed that indicate a player's action
    void skipPushed();
    void disp0Pushed();
    void disp1Pushed();
    void disp2Pushed();
    void disp3Pushed();

    /* P1 or P2 Go button was pressed indicating that a new turn is coming
     * Each function calls a function in WorkerThread to indicate the next turn
     */
    void nextTurnP1();
    void nextTurnP2();
};

#endif // MAINWINDOW_H
