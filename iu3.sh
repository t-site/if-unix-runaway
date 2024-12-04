#!/bin/bash

LINE=$(. ./rand.sh em.txt )
head -"${LINE}" em.txt | tail -1
