# Neovim VSCode integration

Using VSCode Neovim extension, integrating the actual application and not just vim motions.

Disable and Restart Neovim with Ctrl+w+w and Ctrl+e+e

## Neovim Plugins
Currently no nvim plugins installed.

## Main Keymaps
```
### Vim Configured
1. <leader>p/y  ......  Yanking and Pasting on System Clipboard
2. <leader>t    ......  Open Terminal
3. <leader>rf   ......  Run Current File (python)

### VSCode Configured
4. LeftAlt+z+z  ......  Toggle Zen Mode
5. Ctrl+e+t     ......  Switch Cursor Attention betwheen files and terminal (ExitTerminal)
```

### Keymap Notes

1. On keymap 3, the action triggered is equivalent to manually running the file in vscode, using its detected language and attention environment/conditions.
