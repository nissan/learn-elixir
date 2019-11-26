# learn-elixir

My Learning Elixir repo

## Learning notes

### Windows PowerShell and ```iex``` usage
In Windows Powershell, `iex` is already linked, so run

```
New-Alias ielx iex.bat
```

To use `ielx` instead to run interactive Elixir shell

### Equivalent of ```.bashrc```
use [this documentation]https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6 to setup a profile for PowerShell and insert the code
```
export ERL_AFLAGS="-kernel shell_history enabled"
```
to enable history of expressions that have been run inside ```iex``` shell

### VSCode plugins ###
Two exist that seem popular 
1. ```VSCode-Elixir```
2. ```ElixirLS```
Haven't seen a major difference between them, although ```ElixirLS``` acknowledges using VSCode-Elixir code in its implementation. 