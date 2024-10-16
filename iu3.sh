#!/bin/bash

LINE=$(. rand.sh blobs.txt 512 )
head -"${LINE}" blobs.txt | tail -1
