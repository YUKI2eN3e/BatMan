# BatMan
A `bat` script to simulate a basic version of `man` for Windows.

## Requirments
* [`groff`](https://sourceforge.net/projects/ezwinports/files/) or [`mandoc`](https://embedeo.org/ws/doc/man_windows/)
* `less`
* `gzip`
```bash
choco install less gzip
```
* [`ansicon`](https://github.com/adoxa/ansicon) *(Only on older versions of Windows, Windows 10 can handle colours fine without it)*

## Setup
1. Select the version you want and rename it `man.bat`
2. Put `man.bat` somewhere in you PATH.
3. Set PATH_TO_FOLDER_WITH_MAN_DIRS and PATH_TO_FOLDER_WITH_GZ_MAN_DIRS to the location(s) of your Manpages.
4. Set PATH_TO_GROFF/PATH_TO_MANDOC to the full PATH to your `groff.exe` or `mandoc.exe`

**_NOTE:_** You will have to setup/install your manpages manually. (i.e. Copy them to your man_root/man_gz_root folder(s))

**_NOTE2:_** The provided manpages are pandoc conversions of markdown files found [here](https://github.com/MicrosoftDocs/windowsserverdocs/tree/main/WindowsServerDocs/administration/windows-commands) for the commands listed by running `help` on Windows. 

**_NOTE3:_** (Tables display better with the `mandoc` version of the script.)