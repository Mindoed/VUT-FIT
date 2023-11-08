# VUT
## Repository of programs I've done in VUT FIT

### Contains:

- 1_Práce s textem[_](/projekt_1/) `keyfilter.c` - [assignment link](https://moodle.vut.cz/mod/page/view.php?id=320645)

              
- 2_Práce s datovými strukturami[_](/projekt_2/) `maze.c` - [link](https://moodle.vut.cz/mod/page/view.php?id=320646)

- [Tests](/tests/) Folder where shellscripts are used

### Essential to run:

In Microsoft Store download `Terminal` & `Ubuntu`

> Open ubuntu in mentioned terminal

Installing gcc:[^1] 
```
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get install gcc -y
```


Install Windows Linux Subsystem[^2]
```
apt install wsl - ??
apt install makefile
apt install valgrind
```

To debug:[^3]
```
sudo apt-get update
sudo apt-get install build-essential gdb
```

### Useful Commands

**debug** 

`cd "/VUT/projekt_2/" && gcc -std=c11 -Wall -Wextra -Werror -g -DDEBUG -c maze.c`

`cd "/VUT/projekt_2/" && gcc -std=c11 -Wall -Wextra -g -DDEBUG maze.o -o maze_d`

**copy file from cd (local) to remote linux server**

`scp .\file.type xholanv00@eva.fit.vutbr.cz:~`

**run C compiler with wanted arguments**

`gcc -std=c11 -Wall -Wextra -Werror filename.c -o output_filename`

**view text file content**

`cat file.txt`

**edit file in linux cmd** 

`vim filename` `:q` to quit

[^1]: https://stackoverflow.com/questions/62215963/how-to-install-gcc-and-gdb-for-wslwindows-subsytem-for-linux
[^2:]: gl
[^3]: https://code.visualstudio.com/docs/cpp/config-wsl