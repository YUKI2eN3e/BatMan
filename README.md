# BatMan
A `bat` script to simulate a basic version of `man` for Windows.

## Requirments
* `mandoc` found in the `groff` package [here](https://sourceforge.net/projects/ezwinports/files/)
* `less`
* `gzip`
```bash
choco install less gzip
```

## Setup
1. Put `man.bat` somwhere in you PATH.
2. Set `PATH_TO_FOLDER_WITH_MAN_DIRS` and PATH_TO_FOLDER_WITH_GZ_MAN_DIRS to the location(s) of your Manpages.
3. Set PATH_TO_MANDOC to the full PATH to your mandoc.exe

**_NOTE:_** You will have to setup/install your manpages manualy. (i.e. Copy them to your man_root/man_gz_root folder(s))