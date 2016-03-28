#!/bin/bash
# Requires:
# sox, libsox-fmt-mp3
#
# Convert source file to AIFF before using. MP3 gets sync errors
AMBIENT="audio_src/Silent-Crypt_-3db.aiff"
ARISE="audio_src/arise2.aiff"

#TODO escape out any spaces in above filenames
#TODO text for sox w/ mp3 support
#TODO test if these files exist
#TODO show progress as files are converted
#TODO trap errors

# Sum of trim start and trim duration cannot exceed length of AMBIENT

sox -V3 "|sox $AMBIENT -p trim 0 5" $ARISE -C -4.2 audio/005_day.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 5 10" $ARISE -C -4.2 audio/010_week.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 15 20" $ARISE -C -4.2 audio/020_month.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 35 40" $ARISE -C -4.2 audio/040_year.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 75 60" $ARISE -C -4.2 audio/060_decade.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 135 120" $ARISE -C -4.2 audio/120_century.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 255 180" $ARISE -C -4.2 audio/180_centuries.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 0 240" $ARISE -C -4.2 audio/240_millenium.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 240 300" $ARISE -C -4.2 audio/300_age.mp3 splice
sox -V3 "|sox $AMBIENT -p trim 540 360" $ARISE -C -4.2 audio/360_epoch.mp3 splice

#for i in audio/*.aiff
#do
#  lame "$i"
#done

#rm audio/*.aiff

exit 0
