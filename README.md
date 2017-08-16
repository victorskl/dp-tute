# Declarative Programming Tutorial

This goes taking [the Red Pill](https://en.wikipedia.org/wiki/Red_pill_and_blue_pill), anyway!

## Installing Haskell Platform
This includes GHC, GHCi, Cabal and some widely use packages.

### Mac
```
brew install ghc cabal-install
```

### Windows 10 and/or Ubuntu

- Install WSL - [Windows Subsystem for Linux](https://msdn.microsoft.com/en-au/commandline/wsl/about) (also known as Bash on Ubuntu on Windows). If you have previously installed Ubuntu 14.04 version, you should [upgrade it to the latest](https://www.howtogeek.com/278152/how-to-update-the-windows-bash-shell/). Note though that, in order to get the Ubuntu Xenial 16.04 as WSL, you will [first need to update](https://www.howtogeek.com/301795/how-to-get-windows-10s-creators-update-now/) the [Windows 10 Creators Update](https://www.microsoft.com/en-us/software-download/windows10) version, if you haven't done so. I prefer [reset the sandbox environment completely](https://www.howtogeek.com/261188/how-to-uninstall-or-reinstall-windows-10s-ubuntu-bash-shell/) i.e. `lxrun /uninstall /full`. The latest WSL version also [available for OpenSUSE and SLES](https://msdn.microsoft.com/en-au/commandline/wsl/install_guide#for-windows-insiders-install-linux-distribution-of-choice). But I would stick with Ubuntu 16.04 LTS. 

- Then next step is easy-peasy. 

    ```
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install haskell-platform
    ```

- Otherwise, install [official Windows Installer](https://www.haskell.org/platform/) for native Windows development.

### Cabal
Cabal [doc is here](https://www.haskell.org/cabal/) and [how to install Cabal package](https://wiki.haskell.org/Cabal-Install) and packages can be found on [Hackage](http://hackage.haskell.org/). For example, [parallel library](http://hackage.haskell.org/packages/search?terms=parallel) that use in `hello`.

```
cabal update
cabal install parallel
```

### Compiling and Interpreter

To compile:

```
ghc -o my_program.exe my_program.hs
./my_program.exe
```

To start GHC interpreter:

```
ghci
Prelude> :load my_program.hs
Main> :t my_program
Main> my_program arg1 arg2
Main> :?
Main> :q
```

Or directly work inside GHC interpreter:

```
ghci
Prelude> let fac n = if n == 0 then 1 else n * fac (n-1)
Prelude> fac 42
1405006117752879898543142606244511569936384000000000
```

### Kick Start

- Go through this before starting lectures and workshops.

- The [`hello`](hello) folder follow [Haskell in 5 steps](https://wiki.haskell.org/Haskell_in_5_steps) tutorial.

- [Learn_Haskell_in_10_minutes](https://wiki.haskell.org/Learn_Haskell_in_10_minutes)

- http://learnyouahaskell.com/syntax-in-functions

- http://learnyouahaskell.com/types-and-typeclasses#typeclasses-101

