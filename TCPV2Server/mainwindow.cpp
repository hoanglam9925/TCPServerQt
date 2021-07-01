#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QMessageBox>
#include <QMetaEnum>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    initUi();
    connect(&server_, &QTcpServer::newConnection, this, &MainWindow::acceptConnection);

    connect(&client_, static_cast<void (QTcpSocket::*)(QAbstractSocket::SocketError)>(&QTcpSocket::error),
            this, &MainWindow::displayClientError);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_btnStart_clicked()
{
    listen = true;
    startServer();
}

void MainWindow::on_btnStop_clicked()
{
    listen = false;
    disconnectServer();
}

void MainWindow::on_btnSend_clicked()
{
    sendDatatoClient();
}

void MainWindow::initUi()
{
    ui->btnSend->setEnabled(false);
    ui->btnStop->setEnabled(false);
    ui->btnStart->setEnabled(true);
    ui->port->setValue(10000);
}
void MainWindow::acceptConnection()
{
    if(listen)
    {
        //IP ke tiep se duoc dua vao bien conn_
        conn_ = server_.nextPendingConnection();
        /*******************************************/
        //Them IP vao CBB o day ne

        ui->IPlist->addItem(QString(conn_->peerAddress().toString()));
        /*******************************************/
        //Khi co su kien readRead xay ra thi se thuc hien ham readFromConnection
        connect(conn_, &QTcpSocket::readyRead, this, &MainWindow::readFromClient);
        connect(conn_, &QTcpSocket::disconnected, this, [&](){
            int temp;
            temp = ui->IPlist->findText(QString(conn_->peerAddress().toString()));
            ui->IPlist->removeItem(temp);
        });
        connect(conn_, static_cast<void (QTcpSocket::*)(QAbstractSocket::SocketError)>(&QTcpSocket::error),
                this, &MainWindow::displayServerError);

        ui->listmessage->addItem("New connection accepted.\n");
    }
}
void MainWindow::readFromClient()
{

    auto bytes = conn_->readAll();
    ui->listmessage->addItem(bytes.constData());

    //Lenh nay de Echo message ve
    //conn_->write(bytes.prepend("ECHO: "));

}
void MainWindow::displayClientError(QAbstractSocket::SocketError err)
{
    Q_UNUSED(err);

    QMessageBox::information(
                this, tr("TCP Client"),
                tr("Network error: %1.").arg(client_.errorString()));
}
void MainWindow::displayServerError(QAbstractSocket::SocketError err)
{
    if (err == QTcpSocket::RemoteHostClosedError)
    {
        ui->listmessage->addItem(QString("Connection closed.\n"));
        return;
    }

    QMetaEnum metaEnum = QMetaEnum::fromType<QAbstractSocket::SocketError>();

    ui->listmessage->addItem(QString("ERROR: ") + metaEnum.valueToKey(err) + "\n");
}
void MainWindow::startServer()
{
    //Bat su kien khi co du Client moi den thi thuc hien acceptConnection


    while (!server_.isListening() && !server_.listen(QHostAddress::Any,quint16(ui->port->value())))
    {
        auto ret = QMessageBox::critical(
                     this, tr("Server"),
                     tr("cannot start the server: %1.").arg(server_.errorString()),
                     QMessageBox::Retry | QMessageBox::Cancel);
        if (ret == QMessageBox::Cancel)
        {
            ui->listmessage->addItem("ERROR: " + server_.errorString()  + "\n");
            return;
        }
    }
    ui->btnStart->setEnabled(false);
    ui->btnSend->setEnabled(true);
    ui->btnStop->setEnabled(true);
    ui->listmessage->addItem(QString("Listening on port %1...\n").arg(server_.serverPort()));
}
void MainWindow::disconnectServer()
{
   // listen = false;
   // client_.disconnectFromHost();
    //server_.destroyed();
    server_.close();
    ui->btnStop->setEnabled(false);
    ui->btnSend->setEnabled(false);
    ui->btnStart->setEnabled(true);
}
void MainWindow::sendDatatoClient()
{

    if(ui->message->text().isEmpty())
    {
        return;
    }
    conn_->write(ui->message->text().toUtf8());
}
