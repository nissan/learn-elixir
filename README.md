# Learn Elixir - Nissan Dookeran

My Learning Elixir repo notes.

> Disclaimer: I write this as a fellow student, not a teacher. Amendments, enhancements etc all welcome. Notes are not meant to replace the fine tutorials and documentation or forum contributions I reference consistently to build these notes that are already out there, just to share the one or two tips from my own learning path that I think can make the experience better for other learners. I think of it like [the notations Harry Potter found in his Advanced Potion-Making book in the Half-Blood Prince novel](https://harrypotter.fandom.com/wiki/Severus_Snape%27s_copy_of_Advanced_Potion-Making).

## Learning notes

### Windows PowerShell and `iex` usage

In Windows Powershell, `iex` is already linked, so run

```PowerShell
New-Alias ielx iex.bat
```

To use `ielx` instead to run interactive Elixir shell. I also put this line in my profile so the mapping happens automatically every time I start PowerShel.
Use [this documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6) to setup a profile for PowerShell and insert the code

Since I'm self-editing, I may interchange `iex` and my alias `ielx` when writing ,y notes. They're both meaning the same reference to `iex.bat`

### Enabling `iex` shell history on Windows

Add this line to your profile

```PowerShell
$env:ERL_AFLAGS="-kernel shell_history enabled"
```

to enable history of expressions that have been run inside `iex` shell [Referenced here for original answer including other OS config](https://stackoverflow.com/questions/45405070/how-do-i-save-iex-history)

### VSCode plugins

Two exist that seem popular

1. [`VSCode-Elixir`](https://marketplace.visualstudio.com/items?itemName=mjmcloug.vscode-elixir)
2. [`ElixirLS`](https://github.com/JakeBecker/vscode-elixir-ls)
   Haven't seen a major difference between them, although `ElixirLS` acknowledges using VSCode-Elixir code in its implementation.

### Tab autocompletion in `iex`

To get tab autocompletion on Windows Powershell when running `iex` (or in my case `ielx` because of the alias setup) open running

```
ielx --werl
```

This will open `ielx` into a new window with `werl` where you can do tab autocompletion. Not the prettiest, but I guess it will have to do.
I decided to edit the profile for PowerShell and add the line

```PowerShell
$env:IEX_WITH_WERL="true"
```

which sets the environment variable to always run `iex --werl` by default.

[Reference](https://elixirforum.com/t/running-a-mix-application-in-iex-with-the-werl-option/4686)

Another [Nice little quote](https://github.com/elixir-lang/elixir/issues/2682) pointing to a potential other path:

> Another way to do it is to provide iexw.bat which is basically just a call to iex.bat --werl.

[Further reading on `iex`](https://hexdocs.pm/iex/IEx.html)
