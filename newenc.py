#!/usr/bin/env python
# -*- coding: utf-8 -*-
import getpass
from base64 import b64encode
from hashlib import sha512

password = getpass.getpass()
salt = ''
m = sha512()
m.update(password + salt)
print b64encode(m.digest())
