This shell configuration is supposed to be used on remote servers connected to over SSH. The following software and tools are configured:

- Zsh with custom aliases and functions
- oh-my-zsh with a custom theme
- nano
- Emacs 

Apart from that, simple installation and uninstallation scripts are included.

# Installation

First of all, you need to clone this repository to any directory you want:

```Bash
git clone git://github.com/beloglazov/zsh-remote.git
```

Next, you need to cd into the cloned repository:

```Bash
cd zsh-remote
```

The repository contains a few of installation scripts. To apply the configuration, you need to run the scripts one by one according to their numbers. 

```Bash
./01-enable-zsh.sh # set Zsh to be the default shell
./02-install-configs.sh # create soft links to all the configuration files
./03-init-submodules.sh # pull the Emacs modes included as submodules
```

Re-login and enjoy!
