#include <QApplication>
#include <QLabel>
#include <QWidget>
#include <QVBoxLayout>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    
    QWidget window;
    window.setWindowTitle("Hello, World!");
    window.resize(300, 200);
    
    QLabel *label = new QLabel("Hello, World!", &window);
    label->setAlignment(Qt::AlignCenter);
    label->setStyleSheet("font-size: 24px; font-family: Arial;");
    
    QVBoxLayout *layout = new QVBoxLayout();
    layout->addWidget(label);
    window.setLayout(layout);
    
    window.show();
    
    return app.exec();
}