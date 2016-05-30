#include <QApplication>
#include <QQmlApplicationEngine>
#include <QProcess>
#include <QQmlContext>
#include <QTextStream>

class SliderTest : public QObject{
    Q_OBJECT
public:
    Q_INVOKABLE void setValue(QString val){
        QTextStream out(stdout);
        out << "Value of val inside setValue: " << val << endl;
        QProcess process;
//        process.setArguments(QStringList() << "-O " + val);
//        process.start("xrandr --output LVDS1 --gamma 1:2:3");
        process.execute("redshift -O " + val);
//        process.terminate();
    }
};

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    SliderTest sliderTest;
    engine.rootContext()->setContextProperty("sValue", (QObject*)&sliderTest);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}


#include"main.moc"
