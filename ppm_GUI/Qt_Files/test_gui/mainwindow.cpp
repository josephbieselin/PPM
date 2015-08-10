#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "workerthread.h"

#include <QLabel>

#include <QDebug>

#include <QStringList>

// Codes sent corresponding to what action the player performed
#define SKIP        "00"
#define DIRECT_D0   "10"
#define DIRECT_D1   "11"
#define DIRECT_D2   "12"
#define DIRECT_D3   "13"
#define ADD_D0      "20"
#define ADD_D1      "21"
#define ADD_D2      "22"
#define ADD_D3      "23"



/*******************************************************************\
 ************************* PUBLIC FUNCTIONS ************************\
 *******************************************************************/

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    // Built-in function to setup the GUI
    ui->setupUi(this);

    // No WorkerThread object to connect to at instantiation of MainWindow
    this->t = NULL;

    // GUI starts with the "Direct" radio button selected
    ui->directButton->setChecked(true);

    // Qt::RichText allows us to edit the font of the QLabel displays
    ui->disp0->setTextFormat(Qt::RichText);
    ui->disp1->setTextFormat(Qt::RichText);
    ui->disp2->setTextFormat(Qt::RichText);
    ui->disp3->setTextFormat(Qt::RichText);
    ui->p1Points1->setTextFormat(Qt::RichText);
    ui->p1Points2->setTextFormat(Qt::RichText);
    ui->p2Points1->setTextFormat(Qt::RichText);
    ui->p2Points2->setTextFormat(Qt::RichText);
    ui->rd->setTextFormat(Qt::RichText);

    // Set the QLabel displays' font to Arial 60pt
    QFont dispFont("Arial", 60);
    ui->disp0->setFont(dispFont);
    ui->disp1->setFont(dispFont);
    ui->disp2->setFont(dispFont);
    ui->disp3->setFont(dispFont);
    ui->p1Points1->setFont(dispFont);
    ui->p1Points2->setFont(dispFont);
    ui->p2Points1->setFont(dispFont);
    ui->p2Points2->setFont(dispFont);
    ui->rd->setFont(dispFont);

    // Set all QLabel displays' to 0
    ui->disp0->setText("0");
    ui->disp1->setText("0");
    ui->disp2->setText("0");
    ui->disp3->setText("0");
    ui->p1Points1->setText("0");
    ui->p1Points2->setText("0");
    ui->p2Points1->setText("0");
    ui->p2Points2->setText("0");
    ui->rd->setText("0");

    // SIGNAL and SLOT mechanisms for GUI interaction with the WorkerThread
    connect(ui->skipButton, SIGNAL(pressed()), this, SLOT(skipPushed()));
    connect(ui->disp0Button, SIGNAL(clicked(bool)), this, SLOT(disp0Pushed()));
    connect(ui->disp1Button, SIGNAL(clicked(bool)), this, SLOT(disp1Pushed()));
    connect(ui->disp2Button, SIGNAL(clicked(bool)), this, SLOT(disp2Pushed()));
    connect(ui->disp3Button, SIGNAL(clicked(bool)), this, SLOT(disp3Pushed()));
    connect(ui->playP1, SIGNAL(clicked(bool)), this, SLOT(nextTurnP1()));
    connect(ui->playP2, SIGNAL(clicked(bool)), this, SLOT(nextTurnP2()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::setWorkerThread(WorkerThread* thread)
{
    this->t = thread;
    connect(this->t, SIGNAL(serialCommDone(QString)), this, SLOT(newDataRead(QString)));
}

QString MainWindow::getPostColonValue(const QString& data)
{
    int colonIndex = data.indexOf(":");
    int dataSize = data.size();
    QString returnStr;

    for (size_t i = colonIndex + 1; i < dataSize; ++i)
        returnStr.append(data[i]);

    return returnStr;
}

void MainWindow::updateDisplay(QLabel* disp, const QStringList& data)
{
    // Format of data: [ "dispX:4" ]

    disp->setText(getPostColonValue(data[0]));
}

// LOOK INTO PLACING DISPLAYS INTO A VECTOR AND DOING ITERATIVE UPDATES
void MainWindow::updateGUI(QStringList& data)
{
    QStringList temp;

    // Format of dispListData: [ "dispX:4", "dispY:F", ..., "dispZ:A" ]

    /* QStringList's filter function
     * Searches for the passed in string expression in the QStringList and
     * returns another QStringList with any strings in the original list
     * that contained the expression being searched for.
     */

    temp = data.filter("disp0", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->disp0, temp);

    temp = data.filter("disp1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->disp1, temp);

    temp = data.filter("disp2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->disp2, temp);

    temp = data.filter("disp3", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->disp3, temp);

    temp = data.filter("p1pt1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p1Points1, temp);

    temp = data.filter("p1pt2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p1Points2, temp);

    temp = data.filter("p2pt1", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p2Points1, temp);

    temp = data.filter("p2pt2", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->p2Points2, temp);

    temp = data.filter("rd", Qt::CaseInsensitive);
    if (temp.size() != 0)
        updateDisplay(ui->rd, temp);
}



/*******************************************************************\
 ******************************* SLOTS *****************************\
 *******************************************************************/

void MainWindow::newDataRead(QString data)
{
    // Format of data: "disp0:4,disp1:F,disp2:B,disp3:6,rd:8, etc..."
    QStringList dataList = data.split(",");

    updateGUI(dataList);
}

void MainWindow::skipPushed()
{
    QString sendCode = SKIP;

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp0Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp0 was selected
    sendCode.append("0");

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp1Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp1 was selected
    sendCode.append("1");

    this->t->endTurnP1(sendCode);
}

void MainWindow::disp2Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp2 was selected
    sendCode.append("2");

    this->t->endTurnP1(sendCode);

}

void MainWindow::disp3Pushed()
{
    QString sendCode;

    ui->directButton->isChecked() ? sendCode = "1" : sendCode = "2";
    // "0" is appended because disp3 was selected
    sendCode.append("3");

    this->t->endTurnP1(sendCode);
}

void MainWindow::nextTurnP1()
{
    this->t->nextTurnP1();
}

void MainWindow::nextTurnP2()
{
    this->t->nextTurnP2();
}
