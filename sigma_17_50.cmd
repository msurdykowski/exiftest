@echo off

@echo Sigma test
exiftool -ext jpg -ext dng -v0 -P -overwrite_original -if "not defined $Lens" -if "$LensType eq 'Sigma 17-50mm F2.8 EX DC HSM'" -xmp:lensmanufacturer=Sigma -xmp:lensmodel="Sigma 17-50mm F2.8 EX DC HSM" -Lens="Sigma 17-50mm F2.8 EX DC HSM" %1

pause
