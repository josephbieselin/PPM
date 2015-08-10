/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.4.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QFrame *dispFrame;
    QFrame *disp0Frame;
    QLabel *disp0;
    QFrame *disp1Frame;
    QLabel *disp1;
    QFrame *disp2Frame;
    QLabel *disp2;
    QFrame *disp3Frame;
    QLabel *disp3;
    QFrame *dispButtonFrame;
    QPushButton *disp0Button;
    QPushButton *disp1Button;
    QPushButton *disp2Button;
    QPushButton *disp3Button;
    QFrame *buttonFrame;
    QRadioButton *directButton;
    QRadioButton *addButton;
    QPushButton *skipButton;
    QFrame *turnFrame;
    QPushButton *playP1;
    QPushButton *playP2;
    QFrame *pointsFrame;
    QFrame *p2Points2Frame;
    QLabel *p2Points2;
    QFrame *p2Points1Frame;
    QLabel *p2Points1;
    QFrame *p1Points2Frame_2;
    QLabel *p1Points2;
    QFrame *p1Points1Frame;
    QLabel *p1Points1;
    QFrame *p1PointsLabelFrame;
    QLabel *p1PointsLabel;
    QFrame *p2PointsLabelFrame_2;
    QLabel *p2PointsLabel;
    QFrame *rdFrame;
    QFrame *rdTextFrame;
    QLabel *rdLabel;
    QFrame *rdLabelFrame;
    QLabel *rd;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;
    QMenuBar *menuBar;
    QToolBar *toolBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(601, 476);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        dispFrame = new QFrame(centralWidget);
        dispFrame->setObjectName(QStringLiteral("dispFrame"));
        dispFrame->setGeometry(QRect(80, 200, 321, 181));
        dispFrame->setFrameShape(QFrame::StyledPanel);
        dispFrame->setFrameShadow(QFrame::Raised);
        disp0Frame = new QFrame(dispFrame);
        disp0Frame->setObjectName(QStringLiteral("disp0Frame"));
        disp0Frame->setGeometry(QRect(230, 10, 60, 100));
        disp0Frame->setFrameShape(QFrame::StyledPanel);
        disp0Frame->setFrameShadow(QFrame::Raised);
        disp0 = new QLabel(disp0Frame);
        disp0->setObjectName(QStringLiteral("disp0"));
        disp0->setGeometry(QRect(0, 0, 60, 100));
        disp1Frame = new QFrame(dispFrame);
        disp1Frame->setObjectName(QStringLiteral("disp1Frame"));
        disp1Frame->setGeometry(QRect(160, 10, 60, 100));
        disp1Frame->setFrameShape(QFrame::StyledPanel);
        disp1Frame->setFrameShadow(QFrame::Raised);
        disp1 = new QLabel(disp1Frame);
        disp1->setObjectName(QStringLiteral("disp1"));
        disp1->setGeometry(QRect(0, 0, 60, 100));
        disp2Frame = new QFrame(dispFrame);
        disp2Frame->setObjectName(QStringLiteral("disp2Frame"));
        disp2Frame->setGeometry(QRect(90, 10, 60, 100));
        disp2Frame->setFrameShape(QFrame::StyledPanel);
        disp2Frame->setFrameShadow(QFrame::Raised);
        disp2 = new QLabel(disp2Frame);
        disp2->setObjectName(QStringLiteral("disp2"));
        disp2->setGeometry(QRect(0, 0, 60, 100));
        disp3Frame = new QFrame(dispFrame);
        disp3Frame->setObjectName(QStringLiteral("disp3Frame"));
        disp3Frame->setGeometry(QRect(20, 10, 60, 100));
        disp3Frame->setFrameShape(QFrame::StyledPanel);
        disp3Frame->setFrameShadow(QFrame::Raised);
        disp3 = new QLabel(disp3Frame);
        disp3->setObjectName(QStringLiteral("disp3"));
        disp3->setGeometry(QRect(0, 0, 60, 100));
        dispButtonFrame = new QFrame(dispFrame);
        dispButtonFrame->setObjectName(QStringLiteral("dispButtonFrame"));
        dispButtonFrame->setGeometry(QRect(20, 120, 270, 60));
        dispButtonFrame->setFrameShape(QFrame::StyledPanel);
        dispButtonFrame->setFrameShadow(QFrame::Raised);
        disp0Button = new QPushButton(dispButtonFrame);
        disp0Button->setObjectName(QStringLiteral("disp0Button"));
        disp0Button->setGeometry(QRect(210, 15, 60, 20));
        disp1Button = new QPushButton(dispButtonFrame);
        disp1Button->setObjectName(QStringLiteral("disp1Button"));
        disp1Button->setGeometry(QRect(140, 15, 60, 20));
        disp2Button = new QPushButton(dispButtonFrame);
        disp2Button->setObjectName(QStringLiteral("disp2Button"));
        disp2Button->setGeometry(QRect(70, 15, 60, 20));
        disp3Button = new QPushButton(dispButtonFrame);
        disp3Button->setObjectName(QStringLiteral("disp3Button"));
        disp3Button->setGeometry(QRect(0, 15, 60, 20));
        buttonFrame = new QFrame(centralWidget);
        buttonFrame->setObjectName(QStringLiteral("buttonFrame"));
        buttonFrame->setGeometry(QRect(410, 200, 70, 120));
        buttonFrame->setFrameShape(QFrame::StyledPanel);
        buttonFrame->setFrameShadow(QFrame::Raised);
        directButton = new QRadioButton(buttonFrame);
        directButton->setObjectName(QStringLiteral("directButton"));
        directButton->setGeometry(QRect(10, 10, 50, 20));
        addButton = new QRadioButton(buttonFrame);
        addButton->setObjectName(QStringLiteral("addButton"));
        addButton->setGeometry(QRect(10, 50, 50, 20));
        skipButton = new QPushButton(buttonFrame);
        skipButton->setObjectName(QStringLiteral("skipButton"));
        skipButton->setGeometry(QRect(10, 90, 50, 20));
        turnFrame = new QFrame(centralWidget);
        turnFrame->setObjectName(QStringLiteral("turnFrame"));
        turnFrame->setGeometry(QRect(410, 320, 150, 60));
        turnFrame->setFrameShape(QFrame::StyledPanel);
        turnFrame->setFrameShadow(QFrame::Raised);
        playP1 = new QPushButton(turnFrame);
        playP1->setObjectName(QStringLiteral("playP1"));
        playP1->setGeometry(QRect(10, 15, 50, 20));
        playP2 = new QPushButton(turnFrame);
        playP2->setObjectName(QStringLiteral("playP2"));
        playP2->setGeometry(QRect(80, 15, 50, 20));
        pointsFrame = new QFrame(centralWidget);
        pointsFrame->setObjectName(QStringLiteral("pointsFrame"));
        pointsFrame->setGeometry(QRect(80, 20, 320, 170));
        pointsFrame->setFrameShape(QFrame::StyledPanel);
        pointsFrame->setFrameShadow(QFrame::Raised);
        p2Points2Frame = new QFrame(pointsFrame);
        p2Points2Frame->setObjectName(QStringLiteral("p2Points2Frame"));
        p2Points2Frame->setGeometry(QRect(230, 60, 60, 100));
        p2Points2Frame->setFrameShape(QFrame::StyledPanel);
        p2Points2Frame->setFrameShadow(QFrame::Raised);
        p2Points2 = new QLabel(p2Points2Frame);
        p2Points2->setObjectName(QStringLiteral("p2Points2"));
        p2Points2->setGeometry(QRect(0, 0, 60, 100));
        p2Points1Frame = new QFrame(pointsFrame);
        p2Points1Frame->setObjectName(QStringLiteral("p2Points1Frame"));
        p2Points1Frame->setGeometry(QRect(160, 60, 60, 100));
        p2Points1Frame->setFrameShape(QFrame::StyledPanel);
        p2Points1Frame->setFrameShadow(QFrame::Raised);
        p2Points1 = new QLabel(p2Points1Frame);
        p2Points1->setObjectName(QStringLiteral("p2Points1"));
        p2Points1->setGeometry(QRect(0, 0, 60, 100));
        p1Points2Frame_2 = new QFrame(pointsFrame);
        p1Points2Frame_2->setObjectName(QStringLiteral("p1Points2Frame_2"));
        p1Points2Frame_2->setGeometry(QRect(90, 60, 60, 100));
        p1Points2Frame_2->setFrameShape(QFrame::StyledPanel);
        p1Points2Frame_2->setFrameShadow(QFrame::Raised);
        p1Points2 = new QLabel(p1Points2Frame_2);
        p1Points2->setObjectName(QStringLiteral("p1Points2"));
        p1Points2->setGeometry(QRect(0, 0, 60, 100));
        p1Points1Frame = new QFrame(pointsFrame);
        p1Points1Frame->setObjectName(QStringLiteral("p1Points1Frame"));
        p1Points1Frame->setGeometry(QRect(20, 60, 60, 100));
        p1Points1Frame->setFrameShape(QFrame::StyledPanel);
        p1Points1Frame->setFrameShadow(QFrame::Raised);
        p1Points1 = new QLabel(p1Points1Frame);
        p1Points1->setObjectName(QStringLiteral("p1Points1"));
        p1Points1->setGeometry(QRect(0, 0, 60, 100));
        p1PointsLabelFrame = new QFrame(pointsFrame);
        p1PointsLabelFrame->setObjectName(QStringLiteral("p1PointsLabelFrame"));
        p1PointsLabelFrame->setGeometry(QRect(20, 10, 130, 40));
        p1PointsLabelFrame->setFrameShape(QFrame::StyledPanel);
        p1PointsLabelFrame->setFrameShadow(QFrame::Raised);
        p1PointsLabel = new QLabel(p1PointsLabelFrame);
        p1PointsLabel->setObjectName(QStringLiteral("p1PointsLabel"));
        p1PointsLabel->setGeometry(QRect(0, 0, 130, 40));
        p2PointsLabelFrame_2 = new QFrame(pointsFrame);
        p2PointsLabelFrame_2->setObjectName(QStringLiteral("p2PointsLabelFrame_2"));
        p2PointsLabelFrame_2->setGeometry(QRect(160, 10, 130, 40));
        p2PointsLabelFrame_2->setFrameShape(QFrame::StyledPanel);
        p2PointsLabelFrame_2->setFrameShadow(QFrame::Raised);
        p2PointsLabel = new QLabel(p2PointsLabelFrame_2);
        p2PointsLabel->setObjectName(QStringLiteral("p2PointsLabel"));
        p2PointsLabel->setGeometry(QRect(0, 0, 130, 40));
        rdFrame = new QFrame(centralWidget);
        rdFrame->setObjectName(QStringLiteral("rdFrame"));
        rdFrame->setGeometry(QRect(410, 20, 70, 170));
        rdFrame->setFrameShape(QFrame::StyledPanel);
        rdFrame->setFrameShadow(QFrame::Raised);
        rdTextFrame = new QFrame(rdFrame);
        rdTextFrame->setObjectName(QStringLiteral("rdTextFrame"));
        rdTextFrame->setGeometry(QRect(0, 10, 70, 40));
        rdTextFrame->setFrameShape(QFrame::StyledPanel);
        rdTextFrame->setFrameShadow(QFrame::Raised);
        rdLabel = new QLabel(rdTextFrame);
        rdLabel->setObjectName(QStringLiteral("rdLabel"));
        rdLabel->setGeometry(QRect(0, 0, 70, 40));
        rdLabelFrame = new QFrame(rdFrame);
        rdLabelFrame->setObjectName(QStringLiteral("rdLabelFrame"));
        rdLabelFrame->setGeometry(QRect(0, 60, 70, 100));
        rdLabelFrame->setFrameShape(QFrame::StyledPanel);
        rdLabelFrame->setFrameShadow(QFrame::Raised);
        rd = new QLabel(rdLabelFrame);
        rd->setObjectName(QStringLiteral("rd"));
        rd->setGeometry(QRect(0, 0, 70, 100));
        MainWindow->setCentralWidget(centralWidget);
        dispFrame->raise();
        buttonFrame->raise();
        turnFrame->raise();
        pointsFrame->raise();
        disp3->raise();
        disp2->raise();
        rdFrame->raise();
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 601, 21));
        MainWindow->setMenuBar(menuBar);
        toolBar = new QToolBar(MainWindow);
        toolBar->setObjectName(QStringLiteral("toolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, toolBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        disp0->setText(QString());
        disp1->setText(QString());
        disp2->setText(QString());
        disp3->setText(QString());
        disp0Button->setText(QApplication::translate("MainWindow", "disp0", 0));
        disp1Button->setText(QApplication::translate("MainWindow", "disp1", 0));
        disp2Button->setText(QApplication::translate("MainWindow", "disp2", 0));
        disp3Button->setText(QApplication::translate("MainWindow", "disp3", 0));
        directButton->setText(QApplication::translate("MainWindow", "Direct", 0));
        addButton->setText(QApplication::translate("MainWindow", "Add", 0));
        skipButton->setText(QApplication::translate("MainWindow", "Skip", 0));
        playP1->setText(QApplication::translate("MainWindow", "P1 Play", 0));
        playP2->setText(QApplication::translate("MainWindow", "P2 Play", 0));
        p2Points2->setText(QString());
        p2Points1->setText(QString());
        p1Points2->setText(QString());
        p1Points1->setText(QString());
        p1PointsLabel->setText(QApplication::translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:18pt; font-weight:600;\">P1 Points</span></p></body></html>", 0));
        p2PointsLabel->setText(QApplication::translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:16pt; font-weight:600;\">P2 Points</span></p></body></html>", 0));
        rdLabel->setText(QApplication::translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:16pt; font-weight:600;\">RD</span></p></body></html>", 0));
        rd->setText(QApplication::translate("MainWindow", "<html><head/><body><p><br/></p></body></html>", 0));
        toolBar->setWindowTitle(QApplication::translate("MainWindow", "toolBar", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
