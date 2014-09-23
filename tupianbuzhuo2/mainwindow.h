#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QDialog>
#include <ui_dialog.h>

namespace Ui {
class MainWindow;
class Dialog;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    QDialog dialog;



private slots:
      void on_action1_triggered();

      void on_Dialog_accepted();

private:
    Ui::MainWindow *ui;
    Ui::Dialog *dialogui;
};

#endif // MAINWINDOW_H
