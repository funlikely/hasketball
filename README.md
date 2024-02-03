# hasketball
Haskell Bat

This is just an attempt to make a haskell code file that will run in Visual Studio Code on Windows. Probably not anything else.

[] Figure out what files are extraneous. Which ones are useful, and how to use them.
[] add a .gitignore file some time
[] look into organizing the files in this repo

## Investigation

Currently on one Windows PC I can use the Haskell GHCi Debug Adapter Phoityne.

note Stack.yaml has "resolver: ghc-9.2.6"

And Launch.json has 

```
{
    "type": "ghc",
    "request": "launch",
    "name": "haskell(stack)",
    "internalConsoleOptions": "openOnSessionStart",
    "workspace": "${workspaceFolder}",
    "startup": "${workspaceFolder}/app/Main.hs",
    "startupFunc": "",
    "startupArgs": "",
    "stopOnEntry": false,
    "mainArgs": "",
    "ghciPrompt": "H>>= ",
    "ghciInitialPrompt": "> ",
    "ghciCmd": "stack ghci --with-ghc=ghci-dap --test --no-load --no-build --main-is TARGET",
    "ghciEnv": {},
    "logFile": "${workspaceFolder}/.vscode/phoityne.log",
    "logLevel": "WARNING",
    "forceInspect": false
}
```

| Tool    | version     |
|---------|-------------|
| ghcup   |  0.1.20.0      |
| ghc   |   9.2.5 (But 9.2.6 is installed and can be used, apparently)   |
| stack   | 2.93       |
| cabal   |  3.6.2.0    |
| hls   |   1.9.1.0   |
| haskell-debug-adapter | 0.0.38.0 |
| ghci-dap | 0.0.20.0 |


$env:PATH

contains the following in this order:
```
C:\ghcup\bin
C:\Users\Logstar\AppData\Roaming\local\bin
```
The ghcup\bin directory contains versions of the Haskell tools that it can switch among.

The appdata directory contains 
```
ghci-dap.exe
haskell-debug-adapter.exe
stack.exe
```

I can hit breakpoints at this current time, on this installation of the Haskell tools.

I can't do it on the 'Pipe.  I used to be able to but then I broke it.
