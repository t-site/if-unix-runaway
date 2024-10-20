#!/bin/bash

LINE=$(. ./rand.sh blobs.txt )
head -"${LINE}" blobs.txt | tail -1
