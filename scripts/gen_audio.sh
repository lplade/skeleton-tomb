#!/bin/bash
# Requires:
# sox, libsox-fmt-mp3, lame, oggenc
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

sox -V3 "|sox $AMBIENT -p trim 0 5" $ARISE -b 16 audio/005_day.aiff splice
sox -V3 "|sox $AMBIENT -p trim 5 10" $ARISE -b 16 audio/010_week.aiff splice
sox -V3 "|sox $AMBIENT -p trim 15 20" $ARISE -b 16 audio/020_month.aiff splice
sox -V3 "|sox $AMBIENT -p trim 35 40" $ARISE -b 16 audio/040_year.aiff splice
sox -V3 "|sox $AMBIENT -p trim 75 60" $ARISE -b 16 audio/060_decade.aiff splice
sox -V3 "|sox $AMBIENT -p trim 135 120" $ARISE -b 16 audio/120_century.aiff splice
sox -V3 "|sox $AMBIENT -p trim 255 180" $ARISE -b 16 audio/180_centuries.aiff splice
sox -V3 "|sox $AMBIENT -p trim 0 240" $ARISE -b 16 audio/240_millenium.aiff splice
sox -V3 "|sox $AMBIENT -p trim 240 300" $ARISE -b 16 audio/300_age.aiff splice
sox -V3 "|sox $AMBIENT -p trim 540 360" $ARISE -b 16 audio/360_epoch.aiff splice

for i in audio/*.aiff
do
  lame -V 4 -q 2 "$i"
  oggenc "$i"
done

rm audio/*.aiff

exit 0
