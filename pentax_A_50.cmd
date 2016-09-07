@echo off

@echo A 50 test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'A Series Lens'" -if "$exif:focallength == 50" -xmp:lensmanufacturer=Pentax -xmp:lensmodel="Pentax A 50mm F1.7" -Lens="Pentax A 50mm F1.7" %1

pause
