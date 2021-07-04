#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QMessageBox>
#include <QMetaEnum>
#include <QBuffer>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    server = new QTcpServer;
    connect(server, &QTcpServer::newConnection, this, &MainWindow::acceptConnection);
    initUi();
   // connect(&server_, &QTcpServer::newConnection, this, &MainWindow::acceptConnection);


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

void MainWindow::on_btnStopServer_clicked()
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
    ui->btnStopServer->setEnabled(false);
    ui->btnStart->setEnabled(true);
    ui->txtPortNo->setValue(10000);
}
void MainWindow::acceptConnection()
{
    if(listen)
    {
        //IP ke tiep se duoc dua vao bien conn_
        //conn_ = server_.nextPendingConnection();
        QTcpSocket *newConnection = server->nextPendingConnection();
        /*******************************************/
        connections.append(newConnection);
        QBuffer *buffer = new QBuffer(this);
        buffer->open(QIODevice::ReadWrite);
        buffers.insert(newConnection, buffer);
        /*******************************************/
        //Them IP vao CBB o day ne

        ui->cbbClientIp->addItem(QString(newConnection->peerAddress().toString()));
        /*******************************************/
        //Khi co su kien readRead xay ra thi se thuc hien ham readFromConnection
        connect(newConnection, &QTcpSocket::readyRead, this, &MainWindow::readFromClient);
        connect(newConnection, &QTcpSocket::disconnected, this, &MainWindow::removeClient);
        connect(newConnection, static_cast<void (QTcpSocket::*)(QAbstractSocket::SocketError)>(&QTcpSocket::error),
                this, &MainWindow::displayServerError);

        ui->txtMessage->addItem("New connection accepted.\n");
    }
}
void MainWindow::readFromClient()
{
    //Xac dinh ket noi nao co thong diep den
    QTcpSocket* socket = static_cast<QTcpSocket*>(sender());
    //Lay bo dem du lieu tuong ung voi socket (tu bang hash buffers)
    QBuffer *buffer = buffers.value(socket);
    //ghi toan bo du lieu cua socket nay vao bo dem (buffer) da xac dinh o tren
    qint64 bytes = buffer->write(socket->readAll());
    //dich chuyen ve dau bo dem bang ham seek
    buffer->seek(buffer->pos() - bytes);
    auto test = buffer->readAll();
    ui->txtMessage->addItem(test);
//    foreach (QTcpSocket* connection, connections)
//    {
//            connection->write(test); //Gui bang cach ghi ra socket
//    }
//    while (buffer->canReadLine())
//    {
//        QString temp = buffer->readAll();
//        QByteArray line = buffer->readLine();
//        ui->txtMessage->addItem(QString::number(bytes));

//        foreach (QTcpSocket* connection, connections)
//        {
//                connection->write(line); //Gui bang cach ghi ra socket
//        }
//    }

    //auto bytes = conn_->readAll();
    //ui->txtMessage->addItem(bytes.constData());

    //Lenh nay de Echo txtSend ve
    //conn_->write(bytes.prepend("ECHO: "));

}

void MainWindow::displayServerError(QAbstractSocket::SocketError err)
{
    if (err == QTcpSocket::RemoteHostClosedError)
    {
        ui->txtMessage->addItem(QString("Connection closed.\n"));
        return;
    }

    QMetaEnum metaEnum = QMetaEnum::fromType<QAbstractSocket::SocketError>();

    ui->txtMessage->addItem(QString("ERROR: ") + metaEnum.valueToKey(err) + "\n");
}
void MainWindow::startServer()
{
    //Bat su kien khi co du Client moi den thi thuc hien acceptConnection


    while (!server->isListening() && !server->listen(QHostAddress::Any,quint16(ui->txtPortNo->value())))
    {
        auto ret = QMessageBox::critical(
                     this, tr("Server"),
                     tr("cannot start the server: %1.").arg(server->errorString()),
                     QMessageBox::Retry | QMessageBox::Cancel);
        if (ret == QMessageBox::Cancel)
        {
            ui->txtMessage->addItem("ERROR: " + server->errorString()  + "\n");
            return;
        }
    }
    ui->btnStart->setEnabled(false);
    ui->btnSend->setEnabled(true);
    ui->btnStopServer->setEnabled(true);
    ui->txtMessage->addItem(QString("Listening on port %1...\n").arg(server->serverPort()));
}
void MainWindow::disconnectServer()
{
   // listen = false;
   // client_.disconnectFromHost();
    //server_.destroyed();
    server->close();
    ui->btnStopServer->setEnabled(false);
    ui->btnSend->setEnabled(false);
    ui->btnStart->setEnabled(true);
}
void MainWindow::sendDatatoClient()
{
    if(ui->cbbClientIp->currentText().isEmpty())
    {
        return;
    }
    if(ui->txtSend->text().isEmpty())
    {
        return;
    }
    QTcpSocket* tempConnect = nullptr;
    foreach (QTcpSocket* connection, connections)
    {
        if(connection->peerAddress().toString() == ui->cbbClientIp->currentText())
        {
            tempConnect = connection;
            break;
        }
    }
    tempConnect->write(ui->txtSend->text().toUtf8());

    ui->txtMessage->addItem(ui->txtSend->text().toUtf8());
    ui->txtSend->clear();
    //QBuffer *buffer = buffers.find(ui->)
    //conn_->write(ui->txtSend->text().toUtf8());
}
void MainWindow::removeClient()
{
    QTcpSocket* socket = static_cast<QTcpSocket*>(sender());
    QBuffer *buffer = buffers.take(socket);
    buffer->close();
    buffer->deleteLater();
    connections.removeAll(socket);
    socket->deleteLater();
}
