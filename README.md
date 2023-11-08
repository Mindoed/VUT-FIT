# VUT
## Repository of programs I've done in VUT FIT

### School Projects:

**1_Práce s textem** `keyfilter.c` - [assignment link](https://moodle.vut.cz/mod/page/view.php?id=320645)

              
**2_Práce s datovými strukturami** `maze.c` - [link](https://moodle.vut.cz/mod/page/view.php?id=320646)

### Essential to run:

In Microsoft Store download `Terminal` & `Ubuntu`

> Open ubuntu in mentioned terminal
Installing gcc: 
```
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get install gcc -y
```


Install Windows Linux Subsystem
```
apt install wsl
apt install makefile
apt install valgrind
```


To debug:
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



  

  