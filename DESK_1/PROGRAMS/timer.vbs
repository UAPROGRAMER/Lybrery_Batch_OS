dim a, b, c
a = inputbox ("Введите через сколько секунд придёт сообщение для таймера.")
c = inputbox ("Введите сообщение для таймера")
msgbox "Работает таймер"
b = a * 1000
wscript.sleep b
msgbox c