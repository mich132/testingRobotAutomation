import os

def create_folder(foldername):
    os.mkdir("D:\\" + foldername)

def create_sub_folder(subfoldername):
    os.mkdir("D:\\" + subfoldername)

def concatenate_two_value(val1, val2):
    val3 = val1 + " " + val2
    return val3