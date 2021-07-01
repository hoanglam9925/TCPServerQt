#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTcpServer>
#include <QTcpSocket>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_btnStart_clicked();

    void on_btnStop_clicked();

    void on_btnSend_clicked();
    void acceptConnection();
    void readFromClient();
    void displayClientError(QAbstractSocket::SocketError err);
    void displayServerError(QAbstractSocket::SocketError err);
    void disconnectServer();
    void sendDatatoClient();
private:
    bool listen = false;
    void initUi();
    void startServer();
    Ui::MainWindow *ui;

    QTcpServer server_;
    QTcpSocket client_;
    QTcpSocket* conn_;
};

#endif // MAINWINDOW_H
