#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),dialogui(new Ui::Dialog)
{
    ui->setupUi(this);
    QDialog dialog;
    dialogui->setupUi(&dialog);

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_action1_triggered()
{

}

void MainWindow::on_Dialog_accepted()
{
//    dialog.close();

}
