import os

path_to_files = 'C:/Windows/*.log'

file_dir = os.path.dirname(path_to_files) # directory
ext = os.path.splitext(path_to_files)[1] # extension

files = [name for name in os.listdir(file_dir) if name.endswith(ext)] # files as list
