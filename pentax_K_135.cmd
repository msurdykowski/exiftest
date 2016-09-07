@echo off

@echo K 135 test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'K or M Lens'" -if "$exif:focallength == 135" -xmp:lensmanufacturer=Pentax -xmp:lensmodel="Pentax K 135mm F3.5" -Lens="Pentax K 135mm F3.5" %1


pause
