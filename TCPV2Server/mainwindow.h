#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTcpServer>
#include <QTcpSocket>
#include <QList>
#include <QHash>

class QBuffer;
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
    void on_btnStopServer_clicked();
    void on_btnSend_clicked();

    void acceptConnection();
    void readFromClient();
    void displayServerError(QAbstractSocket::SocketError err);
    void disconnectServer();
    void sendDatatoClient();
    void removeClient();
private:
    bool listen = false;
    void initUi();
    void startServer();
    Ui::MainWindow *ui;

    //QTcpServer server_;
    QTcpServer *server;

    QList<QTcpSocket*> connections;
    QHash<QTcpSocket*, QBuffer*> buffers;
    //QTcpSocket client_;
    //QTcpSocket* conn_;
};

#endif // MAINWINDOW_H
