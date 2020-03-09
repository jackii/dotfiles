# Neovim

This is my neovim config.

To see [list of plugins](plugins.vim).

## vim-plug

To install new plugin, add a line to [plugins.vim](plugins.vim).

```
Plug 'new-plugin/new-plugin-name'
```

### Commands

| Command        | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| `PlugInstall ` | Install plugins                                              |
| `PlugUpdate `  | Install or update plugins                                    |
| `PlugClean[!]` | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`  | Upgrade vim-plug itself                                      |
| `PlugStatus`   | Check the status of plugins                                  |
| `PlugDiff`     | Examine changes from the previous update and the pending changes |

If you have any custom config file for the new plugin, add a file in `custom/plugins/` folder, and then load the config file with `init.vim`

```
exe 'source ' . s:path . '/custom/new-plugin.vim'
```

