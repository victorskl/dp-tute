# Declarative Programming Tutorial

This goes taking [the Red Pill](https://en.wikipedia.org/wiki/Red_pill_and_blue_pill), anyway!

## Installing Haskell Platform
This includes GHC, GHCi, Cabal and some widely use packages.

### Mac
```
brew install ghc cabal-install
```

### Windows 10 and/or Ubuntu

- Install WSL - [Windows Subsystem for Linux](https://msdn.microsoft.com/en-au/commandline/wsl/about) (also known as Bash on Ubuntu on Windows). If you have previously installed Ubuntu 14.04 version, you should [upgrade it to the latest](https://www.howtogeek.com/278152/how-to-update-the-windows-bash-shell/). I prefer [reset the sandbox environment completely](https://www.howtogeek.com/261188/how-to-uninstall-or-reinstall-windows-10s-ubuntu-bash-shell/). The latest WSL version also [available for OpenSUSE and SLES](https://msdn.microsoft.com/en-au/commandline/wsl/install_guide#for-windows-insiders-install-linux-distribution-of-choice). But I would stick with Ubuntu 16.04 LTS.

- Then next step is easy-peasy. 

    ```
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install haskell-platform
    ```

- Otherwise, install [official Windows Installer](https://www.haskell.org/platform/) for native Windows development.

## Cabal
Cabal [doc is here](https://www.haskell.org/cabal/) and [how to install Cabal package](https://wiki.haskell.org/Cabal-Install) and packages can be found on [Hackage](http://hackage.haskell.org/). For example, [parallel library](http://hackage.haskell.org/packages/search?terms=parallel) that use in `hello`.

```
cabal update
cabal install parallel
```