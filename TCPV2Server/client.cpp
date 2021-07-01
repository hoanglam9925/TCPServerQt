#include "client.h"
#include <QTcpSocket>
#include <QTextStream>

Client::Client(QObject *parent) : QTcpServer(parent)
{
    mSocket = nullptr;
    connect(this, &Client::newConnection, [&](){
        mSocket = nextPendingConnection();
    });
}
