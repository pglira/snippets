import os

filepath = "/path/to/file.txt"

[dir, file_with_ext] = os.path.split(filepath)
[file_without_ext, ext] = os.path.splitext(file_with_ext)

print("filepath =", filepath)
print("dir =", dir)
print("file_with_ext =", file_with_ext)
print("file_without_ext =", file_without_ext)
print("ext =", ext)