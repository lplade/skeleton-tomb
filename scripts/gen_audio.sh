#!/bin/bash

AMBIENT="al_cv_cryptamb1-10+mins_quieter.aiff"
ARISE="arise2.aiff"


sox -m "|sox $AMBIENT -p trim 0 11" "|sox $ARISE -p pad 5" 005_day.aiff
sox -m "|sox $AMBIENT -p trim 0 16" "|sox $ARISE -p pad 10" 010_week.aiff
sox -m "|sox $AMBIENT -p trim 0 26" "|sox $ARISE -p pad 20" 020_month.aiff
sox -m "|sox $AMBIENT -p trim 0 46" "|sox $ARISE -p pad 40" 040_year.aiff
sox -m "|sox $AMBIENT -p trim 0 66" "|sox $ARISE -p pad 60" 060_decade.aiff
sox -m "|sox $AMBIENT -p trim 0 126" "|sox $ARISE -p pad 120" 120_century.aiff
sox -m "|sox $AMBIENT -p trim 0 186" "|sox $ARISE -p pad 180" 180_centuries.aiff
sox -m "|sox $AMBIENT -p trim 0 246" "|sox $ARISE -p pad 240" 240_millenium.aiff
sox -m "|sox $AMBIENT -p trim 0 306" "|sox $ARISE -p pad 300" 300_age.aiff
sox -m "|sox $AMBIENT -p trim 0 366" "|sox $ARISE -p pad 360" 360_epoch.aiff
