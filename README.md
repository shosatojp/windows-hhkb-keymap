# HHKB like keymap for Windows

## レジストリのScancode Mapを修正する

- CapsLockをLCtrlに変える
- LCtrlを別のキー（存在しないF13）に変える

```ps1
Start-Process powershell -Verb runAs capslock2ctrl.ps1
```

## AutoHotKeyでHHKB風に複合キーの動作を変える

Run script

```ps1
& 'C:\Program Files\AutoHotkey\v2\AutoHotkey.exe' hhkb.ahk
```

Compile script

```ps1
& 'C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe' `
    /base 'C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe' `
    /in hhkb.ahk
.\hhkb.exe
```
