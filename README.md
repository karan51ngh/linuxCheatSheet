# LINUX CLI CHEAT SHEET

- [Package Managers](#package-managers)
    - [Introduction to Package Managers](#introduction-to-package-managers)
    - [Package Managers and Software Packages](#from-where-do-package-managers-get-these-software-packages)
    - [View List of Repositories](#how-can-i-check-the-repositories-your-system-accesses-for-installing-software)
    - [`apt` package manager](#apt-package-manager)
    - [`dpkg` package manager](#dpkg-package-manager)
    - [`apt` vs `dpkg`](#apt-vs-dpkg)

## PACKAGE MANAGERS

### Introduction to Package Managers:

- **Package managers** are software tools for *installing*, *updating*, and *removing software packages* on a computer system.
- They maintain a **database** of available **software packages** and their **dependencies**.
- Package managers automatically download and install necessary dependencies when a user requests the installation or removal of a package.
- Package managers also provide features for managing *package updates*, such as checking for *new versions* and *installing security patches*.
- Popular package managers include *apt*, *dpkg*, *yum*, *rpm*, *pacman*.

### From where do Package Managers get these Software Packages:

- Package managers obtain software packages from **software repositories**.
- Repositories are typically hosted on servers that are accessible over the internet. 
- Repositories can be maintained by the operating system vendor, a third-party provider, or the community.
- Package managers connect to the appropriate repository and download the necessary packages and dependencies.
- This ensures that the packages are obtained from a **trusted source** and are the correct version for the system.
- Popular repositories include Ubuntu's official repositories, Arch Linux's AUR, and Red Hat's EPEL repository.
- Package managers, such as `apt` and `yum`, are used to interact with repositories and download and install packages from them.

### How to check the list of repositories your system accesses for installing software:

Here Terminal Commands for checking the repositories on various major Linux distributions:
- For **Debian** or **Ubuntu**:
    - ` sudo nano /etc/apt/sources.list`
    - This command will open the sources.list file in a text editor.
- For **Fedora** or **CentOS**:
    - `sudo yum repolist`
    - This command will display the repository IDs and names for all enabled repositories on your system.
    - To view more detailed information about a specific repository `sudo yum info <repository-name>`
- For **Arch Linux**:
    - `cat /etc/pacman.conf`
    - This command will display the contents of the configuration file for the Pacman package manager.

### apt package manager

- The `apt` command is a package management tool for **Debian-based** Linux distributions.

- Here are some of the most commonly used options and commands available with apt:

    - `apt update`: updates the package lists from the repositories.
    - `apt upgrade`: upgrades the installed packages to their latest versions.
    - `apt install package`: installs the specified package and its dependencies.
    - `apt remove package`: removes the specified package, but leaves its configuration files intact.
    - `apt purge package`: removes the specified package along with its configuration files.
    - `apt autoremove`: removes any unused dependencies that were installed as a result of package  - installations or removals.
    - `apt search package`: searches for packages with the specified name or keywords.
    - `apt show package`: displays detailed information about the specified package.
    - `apt list`: lists all installed packages on the system.
        - `apt list --installed`: To see all the installed packages on the system.
        - `apt list --upgradable`:  To see all the packages that have a newer version ready to be upgraded.
    - ` apt dist-upgrade`: Upgrade all installed packages, including those that require the installation of new dependencies or the removal of existing ones.
    - `--fix-broken`: Attempt to fix broken dependencies when installing a package.
    - `apt edit-sources`: opens the sources.list file for editing.
- You can use apt to install a .deb file by  `sudo apt-get install /path/to/package.deb`. When using apt to install a .deb file, the package manager will not automatically resolve dependencies or install any required dependencies.
- If you want to use apt to install a .deb file and automatically resolve dependencies, use: `sudo apt --fix-broken install /path/to/package.deb`
- the `--fix-broken` option is specific to the `apt` command and is not supported by the `dpkg` command. `dpkg` is a **lower-level** package manager that works with individual `.deb` packages. It does not have the ability to automatically resolve dependencies or install packages from a remote repository.
- Examples:
    - To update the package lists, run: `sudo apt update`
    - To install the 'htop' package, run: `sudo apt install htop`
    - To remove the 'thunderbird' package, run: `sudo apt remove thunderbird`
    - To search for packages containing the word 'editor', run: `sudo apt search editor`
    - To list all installed packages on the system, run: `sudo apt list`
 
### dpkg package manager:
 
- `dpkg` is a package manager for **Debian-based** systems such as **Ubuntu**. It is used to *install*, *remove*, and *manage software packages* in the `.deb` format.
- The basic syntax of the dpkg command is as follows:
```
dpkg [options] <package_name.deb>
```
- Some common options that are available with the dpkg command:

    - `-i`/`--install`: Install a package from a .deb file.
    - `-r`/`--remove`: Remove a package from the system, leaving its configuration files intact.
    - `-P`/`--purge`: Purge a package from the system, and remove the package and its configuration files.
    - `--unpack`: Unpack a package, but do not configure it.
    - `--configure`: Configure an unpacked package.
    - `--force-depends`: Force the installation of a package even if it depends on a package that is not installed.
    - `--force-remove-reinstreq`: Force the removal of a package even if it is required by other installed packages.
    - `list`: List the installed packages on the system.
    - `search`: Search for a package by name.
    - For a complete list of options, `--help` flag with the `dpkg` command.
- dpkg installs packages on Ubuntu in order to follow the Filesystem Hierarchy Standard (FHS), which defines a standard directory structure for Unix-like operating systems.
- When you use dpkg to install a package, the package and its files are installed in the following locations:
    - **Executable files**: `/usr/bin`
    - **Libraries**: `/usr/lib`
    - **Documentation**: `/usr/share/doc`
    - **Configuration files**: `/etc`
- Examples:
    - Install a package: `sudo dpkg -i /path/to/package.deb`
    - Uninstall a package: `sudo dpkg -r package_name`
    - Purge a package: `sudo dpkg -P package_name`
    - List all installed packages: `dpkg --list`
    - Show details about a package: `dpkg --status package_name`
    - Query which package a file belongs to: `dpkg --search file_path`
    - Extract files from a package: `dpkg -x package_name.deb directory_path`

### apt vs dpkg
 
 - `dpkg` and `apt` are both package managers for Debian-based systems such as Ubuntu.
 - `dpkg` is a lower-level package manager that works with **individual .deb packages**. 
 - **`dpkg` does not have the ability to automatically resolve dependencies or install packages from a remote repository.**
 - `apt` is a higher-level package manager that is built on top of `dpkg`. It has the ability to automatically resolve dependencies and install packages from a remote repository, making it easier to use than dpkg.
