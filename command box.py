import tkinter
import time
import math
from tkinter import *
from tkinter.filedialog import asksaveasfile, askopenfile
from tkinter.messagebox import showerror
from tkinter import messagebox

calc = 0
variable = {}
text = ["Program System Script","","==== Visual ====","== Print ==",
        "= Syntacsys =","print %string%","print & %variable(all)%",
        "= Purpose =","Print your text or variable","",
        "==== Operations ====","== Calc ==","= Syntacsys =",
        "calc %int% (+,-,*,/,%,^,#) %int%",
        "calc & %variable(int,float)% (+,-,*,/,%,^,#) %int%",
        "calc %int% (+,-,*,/,%,^,#) & %variable(int,float)%",
        "calc & %variable(int,float)% (+,-,*,/,%,^,#) & %variable(int,float)%",
        "calc (-+,^/,/^^) %int%","calc (O^,O#) %float%",
        "calc (-+,^/,/^^) & %variable(int,float)%",
        "calc (O^,O#) & %variable(float)%","= Purpose =",
        "Do arifmetic action","+ plus  - minus  * multiply  / division",
        "% remainder from division  ^ raise to a degree",
        "# share purpose  -+ modulate",
        "^/ greatest common denominator  /^^ square root",
        "O^ round up  O# round down"]
textnum = len(text)
i = 0

def commands():
    global calc
    global variable
    global i
    global text
    global textnum
    n = input('>>>')
    lst = n.split()
    if lst[0] == 'print':
        if lst[1] == '&':
            if lst[2] == 'calc':
                print(calc)
            else:
                print(variable[lst[2]])
        else:
            print(lst[1])
    elif lst[0] == 'calc':
        if lst[1] == '&' and lst[4] != '&':
            if lst[3] == '+':
                calc = variable[lst[2]] + int(lst[4])
            elif lst[3] == '-':
                calc = variable[lst[2]] - int(lst[4])
            elif lst[3] == '*':
                calc = variable[lst[2]] * int(lst[4])
            elif lst[3] == '/':
                calc = variable[lst[2]] / int(lst[4])
            elif lst[3] == '%':
                calc = variable[lst[2]] % int(lst[4])
            elif lst[3] == '^':
                calc = variable[lst[2]] ** int(lst[4])
            elif lst[3] == '#':
                calc = variable[lst[2]] // int(lst[4])
            else:
                print('Irong commamd')
        elif lst[3] == '&' and lst[1] != '&':
            if lst[2] == '+':
                calc = int(lst[1]) + variable[lst[4]]
            elif lst[2] == '-':
                calc = int(lst[1]) - variable[lst[4]]
            elif lst[2] == '*':
                calc = int(lst[1]) * variable[lst[4]]
            elif lst[2] == '/':
                calc = int(lst[1]) / variable[lst[4]]
            elif lst[2] == '%':
                calc = int(lst[1]) % variable[lst[4]]
            elif lst[2] == '^':
                calc = int(lst[1]) ** variable[lst[4]]
            elif lst[2] == '#':
                calc = int(lst[1]) // variable[lst[4]]
            else:
                print('Irong commamd')
        elif lst[1] == '&' and lst[4] == '&':
            if lst[3] == '+':
                calc = variable[lst[2]] + variable[lst[5]]
            elif lst[3] == '-':
                calc = variable[lst[2]] - variable[lst[5]]
            elif lst[3] == '*':
                calc = variable[lst[2]] * variable[lst[5]]
            elif lst[3] == '/':
                calc = variable[lst[2]] / variable[lst[5]]
            elif lst[3] == '%':
                calc = variable[lst[2]] % variable[lst[5]]
            elif lst[3] == '^':
                calc = variable[lst[2]] ** variable[lst[5]]
            elif lst[3] == '#':
                calc = variable[lst[2]] // variable[lst[5]]
            else:
                print('Irong commamd')
        elif lst[2] == '&':
            if lst[1] == 'O^':
                calc = math.ceil(variable[lst[3]])
            elif lst[1] == 'O#':
                calc = math.floor(variable[lst[3]])
            elif lst[1] == '-+':
                calc = math.fabs(variable[lst[3]])
            elif lst[1] == '^/':
                calc = math.gcd(variable[lst[3]], variable[lst[3]])
            elif lst[1] == '/^^':
                calc = math.sqrt(variable[lst[3]])
            else:
                print('Irong commamd')
        else:
            if lst[2] == '+':
                calc = int(lst[1]) + int(lst[3])
            elif lst[2] == '-':
                calc = int(lst[1]) - int(lst[3])
            elif lst[2] == '*':
                calc = int(lst[1]) * int(lst[3])
            elif lst[2] == '/':
                calc = int(lst[1]) / int(lst[3])
            elif lst[2] == '%':
                calc = int(lst[1]) % int(lst[3])
            elif lst[2] == '^':
                calc = int(lst[1]) ** int(lst[3])
            elif lst[2] == '#':
                calc = int(lst[1]) // int(lst[3])
            elif lst[1] == 'O^':
                calc = math.ceil(float(lst[2]))
            elif lst[1] == 'O#':
                calc = math.floor(float(lst[2]))
            elif lst[1] == '-+':
                calc = math.fabs(int(lst[2]))
            elif lst[1] == '^/':
                calc = math.gcd(int(lst[2]), int(lst[3]))
            elif lst[1] == '/^^':
                calc = math.sqrt(int(lst[2]))
            else:
                print('Irong commamd')
    elif lst[0] == 'set':
        if lst[1] == 'str':
            variable[lst[2]] = lst[3]
        elif lst[1] == 'int':
            variable[lst[2]] = int(lst[3])
        elif lst[1] == 'flt':
            variable[lst[2]] = float(lst[3])
    elif lst[0] == 'help':
        root = Tk()
        root.title("Help")
        root.iconbitmap('PSS icon.ico')
        root.minsize(width=400, height=580)
        root.maxsize(width=400, height=580)
        
        while i < textnum:
            label = Label(text=text[i])
            label.pack()
            i += 1
        i = 0
        root.mainloop()
    else:
        print('Irong commamd')
while True:
    commands()
