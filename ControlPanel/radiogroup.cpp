#include "radiogroup.h"

#include <QRadioButton>
#include <QDebug>

RadioGroup::RadioGroup(QWidget *parent)
    : QWidget(parent)
    , mainFunctionGroup(this)
{

}


void RadioGroup::keyPressEvent(QKeyEvent *event)
{
    int index = mainFunctionGroup.checkedId();
    int count = mainFunctionGroup.buttons().size();

    qDebug() << tr("QCustomRadioGroup::keyPressEvent");
    if(event->key() == Qt::Key_Up || event->key() == Qt::Key_Down) {
        if(index != -1) {
            if(event->key() == Qt::Key_Up) {
                index --;
                if(index < 0) index = count - 1;
            } else {
                index ++;
                if(index == count) index = 0;
            }
        }
        mainFunctionGroup.button(index)->setChecked(true);
    } else {
        QWidget::keyPressEvent(event);
    }
}

void RadioGroup::InitilizeButtonGroup()
{

    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonSelectImage"), 0);
    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonMountPart"), 1);
    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonMountSerial"), 2);
    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonMountNic"), 3);
    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonChangePassword"), 4);
    mainFunctionGroup.addButton(findChild<QRadioButton *>("radioButtonClean"), 5);
    mainFunctionGroup.setExclusive(true);
}
