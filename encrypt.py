#!/usr/bin/env python
# -*- coding: utf-8 -*-
import base64
from Crypto.Cipher import AES
from Crypto import Random
import getopt
import sys

BS = 16


def pad(s):
    return s + (BS - len(s) % BS) * chr(BS - len(s) % BS)


def unpad(s):
    return s[:-ord(s[len(s)-1:])]


class AESCipher(object):
    def __init__(self, key):
        self.key = key

    def encrypt(self, raw):
        raw = pad(raw)
        iv = Random.new().read(AES.block_size)
        cipher = AES.new(self.key, AES.MODE_CBC, iv)
        return base64.b64encode(iv + cipher.encrypt(raw))

    def decrypt(self, enc):
        enc = base64.b64decode(enc)
        iv = enc[:16]
        cipher = AES.new(self.key, AES.MODE_CBC, iv)
        return unpad(cipher.decrypt(enc[16:]))


if __name__ == '__main__':
    key, arg = '', ''
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hk:t:", ["key=", "text="])
    except getopt.GetoptError:
        print 'encrypt.py -k <key> -t <text>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'encrypt.py -k <key> -t <text>'
            sys.exit()
        elif opt in ("-k", "--key"):
            key = arg
        elif opt in ("-t", "--text"):
            text = arg
    cipher = AESCipher(key)
    print cipher.encrypt(text)
