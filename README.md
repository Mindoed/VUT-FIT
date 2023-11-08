# VUT
## Repository of programs I've done in VUT FIT

### Contains:

- [1](/projekt_1/) Práce s textem &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;`keyfilter.c` &nbsp; [assignment link](https://moodle.vut.cz/mod/page/view.php?id=320645)

              
- [2](/projekt_2/) Práce s datovými strukturami &ensp;&emsp; `maze.c` &ensp;&emsp;&emsp; [assignment link](https://moodle.vut.cz/mod/page/view.php?id=320646)

- Tests &emsp;-&emsp;folder where shellscripts are used

### Essential to run:

In Microsoft Store download `Terminal` & `Ubuntu`

> Open ubuntu in mentioned terminal

<sup>[^1]</sup>Installing gcc: 
```
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get install gcc -y
```


<sup>[^2]</sup>Install Windows Linux Subsystem
```
apt install wsl - ??
apt install makefile
apt install valgrind
```

<sup>[^3]</sup>To debug:
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
[^2]: ![image](https://github.com/Mindoed/VUT/assets/59418963/371cc815-dc4b-4aca-aad8-559484cd3dd4)
[^3]: https://code.visualstudio.com/docs/cpp/config-wsl
