import os
import subprocess
def colored(r, g, b, text):
    return "\033[38;2;{};{};{}m{} \033[38;2;255;255;255m".format(r, g, b, text)
print("")
print(colored (0,0,255, "░██╗░░░░░░░██╗██████╗░░█████╗░████████╗"))
print(colored (0,0,255, "░██║░░██╗░░██║██╔══██╗██╔══██╗╚══██╔══╝"))
print(colored (0,0,255, "░╚██╗████╗██╔╝██████╦╝██║░░██║░░░██║░░░"))
print(colored (0,0,255, "░░████╔═████║░██╔══██╗██║░░██║░░░██║░░░"))
print(colored (0,0,255, "░░╚██╔╝░╚██╔╝░██████╦╝╚█████╔╝░░░██║░░░"))
print(colored (0,0,255, "░░░╚═╝░░░╚═╝░░╚═════╝░░╚════╝░░░░╚═╝░░░"))
print(colored (0,0,255, "Made by: CyberRide"))
print(colored (0,0,255, "github: https://github.com/CyberRide"))
print(colored(255, 0, 0,"WBOT is a bla bla bla""\n"))
# import pyautogui as pg
# import time
# import webbrowser
# num = input('Enter User Number')
# url= 'https://web.whatsapp.com/send?phone='+num+'&app_absent=0'
# webbrowser.open(url)
# text = input("Enter Message ")
# limit=int(input('Enter limit'))
# for i in range(limit):
#     pg.write(text)

#     time.sleep(0.2)
#     pg.press('enter')

import pyautogui as pt
import time

limit = input("Enter limit:")
message = input("Enter message:")
i = 0
time.sleep(5)

while i < int(limit):
    pt.typewrite(message)
    # the message is written where -
    # the cursor belongs      

    pt.press("enter")

    i+=1