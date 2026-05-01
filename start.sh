#!/bin/bash

gcc -O2 -o bgmi bgmi.c
chmod +x bgmi
python3 Danger.py
