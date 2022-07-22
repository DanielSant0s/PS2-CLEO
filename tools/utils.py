import os

class FileEx:
    def __init__(self, file):
        self.file = file

    def size(self):
        self.file.seek(0, os.SEEK_END)
        sz = self.file.tell()
        self.file.seek(0, os.SEEK_SET)
        return sz