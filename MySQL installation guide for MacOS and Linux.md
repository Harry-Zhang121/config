# MySQL installation guide for MacOS and Linux
> "Microsoft SQL server really doesn't get alone with MacOS. And running that in Docker is a pain in the a**. What should I do?"

The answer is not using Microsoft SQL server. There are a lot more relational databases you could use and they are **fully compatible** with SQL language we learn on Informatics2. So I am here writting a guide on installing one of them which runs natively on MacOS and Linux. ~~If you use freeBSD, salute and good luck.~~

1. [What wre we installing](##What_are_we_installing)
2. [Installation](##Installation)
    1. [MacOS](#macos)
    2. [Debian bassed Linux](#Debian_bassed_Linux_73)
    3. [Arch bassed Linux](#Arch)
3. [Configeration](#Configeration)
4. [Graphical Interface](#G)

## What are we installing 
The database we are going to install is MariaDB. Which is forked from MySQL. It is developed my community to keep it free and open-source. It is fully compatible with MySQL. And don't worry, everything you learn from class will work here.
## Installation
### MacOS
#### Homebrew
You first need a *package manager* called [Homebrew](https://brew.sh/). A package manager is an application that helps you install and manage other applications. You will use Homebrew to install everything you need in this guide.

To install home brew. First open your terminal by searching "Terminal" in your Launch pad. You will see a prompt with your username and device name. Looks like this:`Username:~ yourcomputer$` Then, excute this command. (Copy paste the following line and hit Enter)
``` /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ```
It will ask for your password. __Nothing will appear when typing your password. Not even asterisk (*******).__ It is normal, don't panic. Type in your password as normal and hit Enter.
When you see the prompt re appear. Homebrew is installed successfully. You can test this by excuting `brew --version` and the version number should appear on your terminal.

#### MariaDB
Now you can use homebrew to install MariaDB. Simply type this and Enter.
``` brew install mariadb```
Wait until the prompt reappear and the installation is finish. Easy right?
And now you can [jump to the configeration part.](#)



### Debian bassed Linux
Debian, Ubuntu, LinuxMint, ElementryOS.... These are bassed on Debian. So you should follow from here.

### Arch bassed Linux