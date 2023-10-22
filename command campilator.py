import tkinter
import time
import math
from tkinter import *
from tkinter.filedialog import asksaveasfile, askopenfile
from tkinter.messagebox import showerror
from tkinter import messagebox

root = tkinter.Tk()

root.iconbitmap('PSS icon.ico')

root.title("Letter writer 1.0")

root.minsize(width=50, height=50)
root.maxsize(width=50, height=50)

calc = 0
inp = 0

variable = {}
funs = {}
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

def open_file():
    global calc
    global inp
    global variable
    global funs
    global a
    global text
    global textnum
    global FILE_NAME

    inp = askopenfile(mode="r")
    if inp is None:
        return
    FILE_NAME = inp.name
    s = inp.readlines()
    n = len(s)
    a = 0
    s1 = []
    i = 0

    for x in s:
        i += 1
        if (i < n):
            x = x[:-1]
        s1.append(x)

    i = 0
    n = len(s1)

    while i < n:
        lst = s1[i].split()
        if lst[0] == 'print':
            if lst[1] == '&':
                if lst[2] == 'calc':
                    print(calc)
                if lst[2] == 'inp':
                    print(inp)
                else:
                    print(variable[lst[2]])
            else:
                print(lst[1])
        elif lst[0] == 'calc':
            if len(lst) >= 4:
                if lst[1] == '&' and lst[4] != '&':
                    if lst[3] == '+':
                        if lst[2] == 'inp':
                            calc = inp + int(lst[4])
                        else:
                            calc = variable[lst[2]] + int(lst[4])
                    elif lst[3] == '-':
                        if lst[2] == 'inp':
                            calc = inp - int(lst[4])
                        else:
                            calc = variable[lst[2]] - int(lst[4])
                    elif lst[3] == '*':
                        if lst[2] == 'inp':
                            calc = inp * int(lst[4])
                        else:
                            calc = variable[lst[2]] * int(lst[4])
                    elif lst[3] == '/':
                        if lst[2] == 'inp':
                            calc = inp / int(lst[4])
                        else:
                            calc = variable[lst[2]] / int(lst[4])
                    elif lst[3] == '%':
                        if lst[2] == 'inp':
                            calc = inp % int(lst[4])
                        else:
                            calc = variable[lst[2]] % int(lst[4])
                    elif lst[3] == '^':
                        if lst[2] == 'inp':
                            calc = inp ** int(lst[4])
                        else:
                            calc = variable[lst[2]] ** int(lst[4])
                    elif lst[3] == '#':
                        if lst[2] == 'inp':
                            calc = inp // int(lst[4])
                        else:
                            calc = variable[lst[2]] // int(lst[4])
                    else:
                        print('Irong commamd')
                elif lst[3] == '&' and lst[1] != '&':
                    if lst[2] == '+':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) + inp
                        else:
                            calc = int(lst[1]) + variable[lst[4]]
                    elif lst[2] == '-':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) - inp
                        else:
                            calc = int(lst[1]) - variable[lst[4]]
                    elif lst[2] == '*':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) * inp
                        else:
                            calc = int(lst[1]) * variable[lst[4]]
                    elif lst[2] == '/':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) / inp
                        else:
                            calc = int(lst[1]) / variable[lst[4]]
                    elif lst[2] == '%':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) % inp
                        calc = int(lst[1]) % variable[lst[4]]
                    elif lst[2] == '^':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) ** inp
                        else:
                            calc = int(lst[1]) ** variable[lst[4]]
                    elif lst[2] == '#':
                        if lst[4] == 'inp':
                            calc = int(lst[1]) // inp
                        else:
                            calc = int(lst[1]) // variable[lst[4]]
                    else:
                        print('Irong commamd')
                elif lst[1] == '&' and lst[4] == '&':
                    if lst[3] == '+':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp + inp
                        elif lst[2] == 'inp':
                            calc = inp + variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] + inp
                        else:
                            calc = variable[lst[2]] + variable[lst[5]]
                    elif lst[3] == '-':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp - inp
                        elif lst[2] == 'inp':
                            calc = inp - variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] - inp
                        else:
                            calc = variable[lst[2]] - variable[lst[5]]
                    elif lst[3] == '*':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp * inp
                        elif lst[2] == 'inp':
                            calc = inp * variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] * inp
                        else:
                            calc = variable[lst[2]] * variable[lst[5]]
                    elif lst[3] == '/':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp / inp
                        elif lst[2] == 'inp':
                            calc = inp / variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] / inp
                        else:
                            calc = variable[lst[2]] / variable[lst[5]]
                    elif lst[3] == '%':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp % inp
                        elif lst[2] == 'inp':
                            calc = inp % variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] % inp
                        else:
                            calc = variable[lst[2]] % variable[lst[5]]
                    elif lst[3] == '^':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp ** inp
                        elif lst[2] == 'inp':
                            calc = inp ** variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] ** inp
                        else:
                            calc = variable[lst[2]] ** variable[lst[5]]
                    elif lst[3] == '#':
                        if lst[2] == 'inp' and lst[5] == 'inp':
                            calc = inp // inp
                        elif lst[2] == 'inp':
                            calc = inp // variable[lst[5]]
                        elif lst[5] == 'inp':
                            calc = variable[lst[2]] // inp
                        else:
                            calc = variable[lst[2]] // variable[lst[5]]
                    else:
                        print('Irong commamd')
                elif lst[2] == '&':
                    if lst[1] == 'O^':
                        if lst[3] == 'inp':
                            calc = math.ceil(inp)
                        else:
                            calc = math.ceil(variable[lst[3]])
                    elif lst[1] == 'O#':
                        if lst[3] == 'inp':
                            calc = math.floor(inp)
                        else:
                            calc = math.floor(variable[lst[3]])
                    elif lst[1] == '-+':
                        if lst[3] == 'inp':
                            calc = math.fabs(inp)
                        else:
                            calc = math.fabs(variable[lst[3]])
                    elif lst[1] == '^/':
                        if lst[3] == 'inp' and lst[4] == 'inp':
                            calc = math.gcd(inp, inp)
                        elif lst[3] == 'inp':
                            calc = math.gcd(inp, int(lst[4]))
                        elif lst[4] == 'inp':
                            calc = math.gcd(int(lst[3]), inp)
                        else:
                            calc = math.gcd(variable[lst[3]], variable[lst[4]])
                    elif lst[1] == '/^^':
                        if lst[3] == 'inp':
                            calc = math.sqrt(inp)
                        else:
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
        elif lst[0] == 'set':
            if lst[3] == '&':
                if lst[4] == 'calc':
                        variable[lst[2]] = calc
                elif lst[1] == 'int':
                        variable[lst[2]] = int(lst[4])
                elif lst[1] == 'flt':
                        variable[lst[2]] = float(lst[4])
            elif lst[1] == 'str':
                variable[lst[2]] = lst[3]
            elif lst[1] == 'int':
                variable[lst[2]] = int(lst[3])
            elif lst[1] == 'flt':
                variable[lst[2]] = float(lst[3])
        elif lst[0] == 'inp':
            if lst[1] == 'str':
                inp = input(lst[2])
            elif lst[1] == 'int':
                inp = int(input(lst[2]))
            elif lst[1] == 'flt':
                inp = float(input(lst[2]))
        elif lst[0] == 'help':
            help = Tk()
            help.title("Help")
            help.iconbitmap('PSS icon.ico')
            help.minsize(width=400, height=580)
            help.maxsize(width=400, height=580)
            
            while a < textnum:
                label = Label(text=text[i])
                label.pack()
                a += 1
            a = 0
            help.mainloop()
        elif lst[0] == ':':
            funs[lst[1]] = i
        elif lst[0] == 'goto':
            i = funs[lst[1]]
        elif lst[0] == 'if':
            if lst[1] == '&' and lst[4] == '&':
                if lst[3] == '==':
                    if variable[lst[2]] == variable[lst[5]]:
                        i = funs[lst[6]]
                if lst[3] == '>':
                    if variable[lst[2]] > variable[lst[5]]:
                        i = funs[lst[6]]
                if lst[3] == '<':
                    if variable[lst[2]] < variable[lst[5]]:
                        i = funs[lst[6]]
                if lst[3] == '>=':
                    if variable[lst[2]] >= variable[lst[5]]:
                        i = funs[lst[6]]
                if lst[3] == '<=':
                    if variable[lst[2]] <= variable[lst[5]]:
                        i = funs[lst[6]]
                if lst[3] == '!=':
                    if variable[lst[2]] != variable[lst[5]]:
                        i = funs[lst[6]]
            elif lst[1] == '&':
                if lst[3] == '==':
                    if variable[lst[2]] == int(lst[4]):
                        i = funs[lst[5]]
                if lst[3] == '>':
                    if variable[lst[2]] > int(lst[4]):
                        i = funs[lst[5]]
                if lst[3] == '<':
                    if variable[lst[2]] < int(lst[4]):
                        i = funs[lst[5]]
                if lst[3] == '>=':
                    if variable[lst[2]] >= int(lst[4]):
                        i = funs[lst[5]]
                if lst[3] == '<=':
                    if variable[lst[2]] <= int(lst[4]):
                        i = funs[lst[5]]
                if lst[3] == '!=':
                    if variable[lst[2]] != int(lst[4]):
                        i = funs[lst[5]]
            elif lst[3] == '&':
                if lst[2] == '==':
                    if int(lst[1]) == variable[lst[4]]:
                        i = funs[lst[5]]
                if lst[2] == '>':
                    if int(lst[1]) > variable[lst[4]]:
                        i = funs[lst[5]]
                if lst[2] == '<':
                    if int(lst[1]) < variable[lst[4]]:
                        i = funs[lst[5]]
                if lst[2] == '>=':
                    if int(lst[1]) >= variable[lst[4]]:
                        i = funs[lst[5]]
                if lst[2] == '<=':
                    if int(lst[1]) <= variable[lst[4]]:
                        i = funs[lst[5]]
                if lst[2] == '!=':
                    if int(lst[1]) != variable[lst[4]]:
                        i = funs[lst[5]]
        else:
            print('Irong commamd')
        i += 1

menuBar = tkinter.Menu(root)

fileMenu = tkinter.Menu(menuBar)

menuBar.add_cascade(label="File", command=open_file)
menuBar.add_cascade(label="Exit", command=root.quit)

root.config(menu=menuBar)

root.mainloop()
