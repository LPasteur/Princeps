#coding:euc-kr
import sys
from PyQt5.QtWidgets import *
from PyQt5 import uic
import pymysql

conn = pymysql.connect(
    host='localhost',
    user='root',
    password='root',
    db='korea',
    charset='utf8'
)
#no�� �˻�
def selectTableSearch(_no):
    cur = conn.cursor()
    sql = "SELECT no, name, tel, etc FROM sample WHERE no = %s"
    cur.execute(sql, (str(_no)))

    rows = cur.fetchall()

    for row in rows:
        print(row)
    return rows

#table ����Ʈ
def selectTableList():
    cur = conn.cursor()
    sql = "SELECT no, name, tel, etc FROM sample ORDER BY no asc"
    cur.execute(sql)

    rows = cur.fetchall()

    return rows

#table ������ �߰�
def insertTable(_no, _name, _tel, _etc):
    cur = conn.cursor()
    sql = "INSERT INTO sample (no, name, tel, etc) VALUES (%s, %s, %s, %s)"
    cur.execute(sql, (str(_no), _name, _tel, _etc))
    conn.commit()

#table ������ ����
def updateTable(_no, _name, _tel, _etc):
    cur = conn.cursor()
    sql = """UPDATE sample SET name = %s , tel = %s, etc = %s WHERE no = %s"""
    cur.execute(sql, (_name, _tel, _etc, str(_no)))
    conn.commit()

#table ������ ����
def deleteTable(_no):
    cur = conn.cursor()
    sql = """DELETE from sample WHERE no = %s"""
    cur.execute(sql, str(_no))
    conn.commit()

form_class = uic.loadUiType("main_ui.ui")[0]

class MyWindow(QMainWindow, form_class):
    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.pushButton.clicked.connect(self.btn_clicked)
        self.pushButton_2.clicked.connect(self.btn_add_clicked)
        self.pushButton_3.clicked.connect(self.btn_modify_clicked)
        self.pushButton_4.clicked.connect(self.btn_delete_clicked)

        #���̺��� ����Ŭ�� �̺�Ʈ�ֱ�
        self.tableWidget.itemDoubleClicked.connect(self.btn_table_double_clicked)

        #���̺� ���� �Ұ����ϰ� ����
        self.tableWidget.setEditTriggers(QAbstractItemView.NoEditTriggers)

    # ��ȸ
    def refresh(self):
        rows = selectTableList()
        self.tableWidget.setRowCount(len(rows))
        count  = 0;
        for row in rows:
            self.tableWidget.setItem(count, 0, QTableWidgetItem(str(row[0])))
            self.tableWidget.setItem(count, 1, QTableWidgetItem(row[1]))
            self.tableWidget.setItem(count, 2, QTableWidgetItem(row[2]))
            self.tableWidget.setItem(count, 3, QTableWidgetItem(row[3]))
            count += 1

    #���̺� ����Ŭ��
    def btn_table_double_clicked(self):
        try:
            QMessageBox.information(self, "message", "����Ŭ��")

            tw_si = self.tableWidget.selectedIndexes()

            for idx in tw_si:
                pass

            #row�� 0��° no
            item = self.tableWidget.item(idx.row(), 0)
            if item is not None:
                txt = item.text()
                self.lineEdit.setText(txt)
            else:
                txt = "no data"

            # row�� 1��° name
            item = self.tableWidget.item(idx.row(), 1)
            if item is not None:
                txt = item.text()
                self.lineEdit_2.setText(txt)
            else:
                txt = "no data"

            # row�� 2��° tel
            item = self.tableWidget.item(idx.row(), 2)
            if item is not None:
                txt = item.text()
                self.lineEdit_3.setText(txt)
            else:
                txt = "no data"

            # row�� 3��° etc
            item = self.tableWidget.item(idx.row(), 3)
            if item is not None:
                txt = item.text()
                self.lineEdit_4.setText(txt)
            else:
                txt = "no data"

            self.refresh()
        except Exception as e:
            print(e)
            print(type(e))


    # ��ȸ ��ư
    def btn_clicked(self):
        try:
            QMessageBox.information(self, "message", "��ȸ")
            self.refresh()
        except Exception as e:
            QMessageBox.warning(self, "[Error Message]", "����Ÿ�� : " + str(type(e)) + "\n�������� : " + str(e))
            print(e)
            print(type(e))

    # �߰� ��ư
    def btn_add_clicked(self):
        try:
            QMessageBox.information(self, "message", "�߰�")
            insertTable(self.lineEdit.text(), self.lineEdit_2.text(),self.lineEdit_3.text(),self.lineEdit_4.text())

            self.refresh()
        except Exception as e:
            QMessageBox.warning(self, "[Error Message]", "����Ÿ�� : " + str(type(e)) + "\n�������� : " +str(e))
            print(e)
            print(type(e))
    # ���� ��ư
    def btn_modify_clicked(self):
        try:
            QMessageBox.information(self, "message", "����")
            updateTable(self.lineEdit.text(), self.lineEdit_2.text(),self.lineEdit_3.text(),self.lineEdit_4.text())

            self.refresh()
        except Exception as e:
            QMessageBox.warning(self, "[Error Message]", "����Ÿ�� : " + str(type(e)) + "\n�������� : " + str(e))
            print(e)
            print(type(e))



    # ���� ��ư (no ��ġ�� ������ ���� ������ ������ ���� ��)
    def btn_delete_clicked(self):

        try:
            QMessageBox.information(self, "message", "����")

            tw_si = self.tableWidget.selectedIndexes()

            for idx in tw_si:
                pass

            #row�� 0��° no
            item = self.tableWidget.item(idx.row(), 0)
            if item is not None:
                no_txt = item.text()
            else:
                no_txt = "no data"

            deleteTable(no_txt)
            self.refresh()

        except Exception as e:
            QMessageBox.warning(self, "[Error Message]", "����Ÿ�� : " + str(type(e)) + "\n�������� : " + str(e))
            print(e)
            print(type(e))


if __name__ == "__main__":
    app = QApplication(sys.argv)
    myWindow = MyWindow()
    myWindow.show()
    app.exec_()

# updateTable('bbe',10)
