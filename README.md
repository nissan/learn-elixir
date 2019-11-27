# Learn Elixir - Nissan Dookeran

My Learning Elixir repo notes. Disclaimer: I write this as a fellow student, not a teacher. Amendments, enhancements etc all welcome. Notes are not meant to replace the fine tutorials and documentation out there, just to share the one or two tips that make the experience better for the learner. I think of it like [the notations Harry Potter found in his Advanced Potion-Making book in the Half-Blood Prince novel](https://harrypotter.fandom.com/wiki/Severus_Snape%27s_copy_of_Advanced_Potion-Making).
## Learning notes

### Windows PowerShell and ```iex``` usage
In Windows Powershell, `iex` is already linked, so run

```PowerShell
New-Alias ielx iex.bat
```

To use `ielx` instead to run interactive Elixir shell

### Enabling `iex` shell history on Windows
use [this documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6) to setup a profile for PowerShell and insert the code
```PowerShell
set ERL_AFLAGS "-kernel shell_history enabled"
```
to enable history of expressions that have been run inside `iex` shell [Referenced here for original answer including other OS config](https://stackoverflow.com/questions/45405070/how-do-i-save-iex-history)


### VSCode plugins ###
Two exist that seem popular 
1. ```VSCode-Elixir```
2. ```ElixirLS```
Haven't seen a major difference between them, although ```ElixirLS``` acknowledges using VSCode-Elixir code in its implementation. 