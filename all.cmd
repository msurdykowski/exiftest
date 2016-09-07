@echo off

@echo Sigma test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'Sigma 17-50mm F2.8 EX DC HSM'" -xmp:lensmanufacturer=Sigma -xmp:lensmodel="Sigma 17-50mm F2.8 EX DC HSM" -Lens="Sigma 17-50mm F2.8 EX DC HSM" %1

@echo K 135 test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'K or M Lens'" -if "$exif:focallength == 135" -xmp:lensmanufacturer=Pentax -xmp:lensmodel="Pentax K 135mm F3.5" -Lens="Pentax K 135mm F3.5" %1

@echo A 50 test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'A Series Lens'" -if "$exif:focallength == 50" -xmp:lensmanufacturer=Pentax -xmp:lensmodel="Pentax A 50mm F1.7" -Lens="Pentax A 50mm F1.7" %1

pause

REM -overwrite_original
REM -if "$LensType eq 'Sigma 17-50mm F2.8 EX DC HSM'"
REM -if "not defined $xmp:lensmanufacturer"
REM -P