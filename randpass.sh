#!/usr/bin/env python

import sys
import random


def get_random_string(length, allowed_chars):
    return ''.join(random.SystemRandom().choice(allowed_chars) for i in range(length))


if __name__ == '__main__':
    if len(sys.argv) > 1:
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    else:
        chars = 'abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(-_=+)ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    r_str = get_random_string(16, chars)
    sys.stdout.write(r_str)
