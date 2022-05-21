@ECHO OFF

set man_root=PATH_TO_FOLDER_WITH_MAN_DIRS
set man_gz_root=PATH_TO_FOLDER_WITH_GZ_MAN_DIRS

set mandoc=PATH_TO_MANDOC

set argC=0
for %%x in (%*) do Set /A argC+=1
if %argC%==2 goto cat
if %argC%==1 goto no_cat
if %argC%==0 echo Usage: `man program` or `man catagory program` & goto end

:no_cat

rem Search all catagories

:check_man1
if exist %man_root%\man1\%1.1 goto man1
:check_gz_man1
if exist %man_gz_root%\man1\%1.1.gz goto gz_man1

:check_man3
if exist %man_root%\man3\%1.3 goto man3
:check_gz_man3
if exist %man_root%\man3\%1.3.gz goto gz_man3

:check_man5
if exist %man_root%\man5\%1.5 goto man5
:check_gz_man5
if exist %man_root%\man3\%1.5.gz goto gz_man5

:check_man7
if exist %man_root%\man7\%1.7 goto man7
:check_gz_man7
if exist %man_root%\man7\%1.7.gz goto gz_man7

:check_man8
if exist %man_root%\man8\%1.8 goto man8
:check_gz_man8
if exist %man_root%\man8\%1.8.gz goto gz_man8

echo Manpage not found
goto end

:cat

rem Search selected catagory

if exist %man_root%\man%1\%2.%1 goto cat_man%1
if exist %man_root%\man%1\%2.%1.gz goto cat_gz_man%1

echo Manpage not found
goto end

rem Man (1)

:man1
%mandoc% %man_root%\man1\%1.1 | less -r
goto end

:cat_man1
%mandoc% %man_root%\man1\%2.1 | less -r
goto end

:gz_man1
gzip -d -k --to-stdout %man_gz_root%\man1\%1.1.gz | %mandoc% | less -r
goto end

:cat_gz_man1
gzip -d -k --to-stdout %man_gz_root%\man1\%2.1.gz | %mandoc% | less -r
goto end

rem Man (3)

:man3
%mandoc% %man_root%\man3\%1.3 | less -r
goto end

:gz_man3
gzip -d -k --to-stdout %man_gz_root%\man3\%1.3.gz | %mandoc% | less -r
goto end

:cat_man3
%mandoc% %man_root%\man3\%2.3 | less -r
goto end

:cat_gz_man3
gzip -d -k --to-stdout %man_gz_root%\man3\%2.3.gz | %mandoc% | less -r
goto end

rem Man (5)

:man5
%mandoc% %man_root%\man5\%1.5 | less -r
goto end

:gz_man5
gzip -d -k --to-stdout %man_gz_root%\man5\%1.5.gz | %mandoc% | less -r
goto end

:cat_man5
%mandoc% %man_root%\man5\%2.5 | less -r
goto end

:cat_gz_man5
gzip -d -k --to-stdout %man_gz_root%\man5\%2.5.gz | %mandoc% | less -r
goto end

rem Man (7)

:man7
%mandoc% %man_root%\man7\%1.7 | less -r
goto end

:gz_man7
gzip -d -k --to-stdout %man_gz_root%\man7\%1.7.gz | %mandoc% | less -r
goto end

:cat_man7
%mandoc% %man_root%\man7\%2.7 | less -r
goto end

:cat_gz_man7
gzip -d -k --to-stdout %man_gz_root%\man7\%2.7.gz | %mandoc% | less -r
goto end

rem Man (8)

:man8
%mandoc% %man_root%\man8\%1.8 | less -r
goto end

:gz_man8
gzip -d -k --to-stdout %man_gz_root%\man8\%1.8.gz | %mandoc% | less -r
goto end

:cat_man8
%mandoc% %man_root%\man8\%2.8 | less -r
goto end

:cat_gz_man8
gzip -d -k --to-stdout %man_gz_root%\man8\%2.8.gz | %mandoc% | less -r
goto end

:end