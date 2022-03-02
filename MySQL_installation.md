# MySQL installation guide for MacOS and Linux
> "Microsoft SQL server really doesn't get alone with MacOS. And running that in Docker is a pain in the a**. What should I do?"

The answer is not using Microsoft SQL server. There are a lot more relational databases you could use and they are **fully compatible** with SQL language we learn on Informatics2. So I am here writing a guide on installing one of them which runs natively on MacOS and Linux. ~~If you use freeBSD, salute and good luck.~~

1. [What are we installing](#what-are-we-installing)
2. [Installation](#installation)
    1. [MacOS](#macos)
    2. [Debian based Linux](#debian-based-linux)
    3. [Arch based Linux](#arch-based-linux)
3. [Configuration](#configuration)
4. [Graphical Interface](#gui-tool)

## What are we installing 
The database we are going to install is MariaDB. Which is forked from MySQL. It is developed my community to keep it free and open-source. It is fully compatible with MySQL. And don't worry, everything you learn from class will work here.

## Installation

### MacOS

#### 1. Homebrew
You first need a *package manager* called [Homebrew](https://brew.sh/). A package manager is an application that helps you install and manage other applications. You will use Homebrew to install everything you need in this guide.

To install homebrew. First open your terminal by searching "Terminal" in your Launch pad. You will see a prompt with your username and device name. Looks like this:`michael@MacBook-Pro ~ %` Then, execute this command. (Copy paste the following line and hit Return)
``` 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
```
It will ask for your password. __Nothing will appear when typing your password. Not even asterisk (*******).__ It is normal, don't panic. Type in your password as normal and hit Return.  
When you see the prompt reappear. Homebrew is installed successfully. You can test this by executing `brew --version` and the version number should appear on your terminal.

Further questions regarding homebrew installation can refer to [Homebrew documentation.](https://docs.brew.sh/Installation)
#### 2. MariaDB
Now you can use homebrew to install MariaDB. Simply type this and Return.
``` 
brew install mariadb
```
Wait until the prompt reappear and the installation is finished. Easy right?  
And now you can [jump to the configuration part.](#configuration)



### Debian based Linux
Debian, Ubuntu, LinuxMint, ElementryOS.... These are based on Debian. So you should follow from here.

#### 0. Btrfs
If your system runs on [Btrfs](https://wiki.archlinux.org/title/Btrfs). You should consider disabling [Cpoy-on-Write](https://wiki.archlinux.org/title/Btrfs#Copy-on-Write_(CoW)) before creating any database.  
If you don't know what is Btrfs or what is a file system. You can probably skip this step.

#### 1. MariaDB
First update your package index
```
sudo apt update
```
You need to enter your password. __Nothing will appear when typing your password. Not even asterisk (*******).__ It is normal, don't panic. Type in your password as normal and hit Enter.

Then install MariaDB
```
sudo apt install mariadb-server
```
You are done! And now you can [jump to the configuration part.](#configuration)

### Arch based Linux
Archlinux, Manjaro, Arcolinux...These are based on Archlinux. So you should follow from here.

#### 0. Btrfs
If your system runs on [Btrfs](https://wiki.archlinux.org/title/Btrfs). You should consider disabling [Cpoy-on-Write](https://wiki.archlinux.org/title/Btrfs#Copy-on-Write_(CoW)) before creating any database.   
If you don't know what is Btrfs or what is a file system. You can probably skip this step.

#### 1. MariaDB
First update your arch repository
```
sudo pacman -Syy
```
You need to enter your password. __Nothing will appear when typing your password. Not even asterisk (*******).__ It is normal, don't panic. Type in your password as normal and hit Enter.

To install MariaDB
```
sudo pacman -S mariadb
```
Then run this
```
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```
Now you can **Enable** MariaDB in systemd
```
sudo systemctl enable --now mariadb.service
```
You are done! And now you can [jump to the configuration part.](#configuration)

## Configuration
From this step all commends will be identical for different platform.

#### 1. Log in as root user
```
sudo mysql -u root -p
```
If the output start with `[sudo]` you need to provide your system password. Then you will be asked for the database user password which is **blank** so just hit Enter/Return.   
If only `Enter password:` is displayed then just hit Enter/Return.   
You should see the prompt has changed. It should looks like this: `MariaDB [(none)]>`

Execute these commands to configure your database. **Note that every line end with a semi-colon ;**
#### 2. Create a new database called "Info2", you can use any name you want.
```
create database Info2;
```
#### 3. Create a user called "spongebob" with the password of "sponge_password". 
**Replace "spongebob" with your system user name! As showed on your terminal prompt.**  ~~Unless you are spongebob~~
```
create user 'spongebob'@'localhost' identified by 'sponge_password';
```
#### 4. Grant all permissions on database Info2 to user spongebob.
```
grant all on Info2.* to 'spongebob'@'localhost';
```
#### 5. Flush privileges
``` 
flush privileges;
```
#### 6. We are done on root account. Exit now.
```
exit
```
My terminal output:
![Config](https://i.ibb.co/v4NcbxH/Screenshot-2022-03-02-001905.png)

## Enjoy!
Now you can log in the database without using sudo: `mysql -u spongebob -p`   
Switch to the database we just created: `use Info2`   
Maybe create a table: `create table employee(......)`   
![enjoy](https://i.ibb.co/1dBc12T/Screenshot-2022-03-02-010021.png)

## GUI tool
I intended to cover the installation and configuration of a GUI tool in this guide as well. But because of limited time, I will update this guide later.

## License
This work is licensed under a [Creative Commons Attribution 4.0 International License.](https://creativecommons.org/licenses/by/4.0/)   
Feel free to share and redistribute this work to help others.
