#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QTcpServer>
class Client : public QTcpServer
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = nullptr);

    void send(const QString &message);


private:
    QTcpSocket *mSocket;
};

#endif // CLIENT_H
