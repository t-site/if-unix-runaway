#!/bin/bash

LINE=$(. ./rand.sh blobs.txt 32768 )
head -"${LINE}" blobs.txt | tail -1
