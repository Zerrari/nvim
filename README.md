# Neovim

## Install

First
```
$ chmod +x install.sh
$ ./install.sh
```

Then
```
$ nvim
$ :PlugInstall
```

## Plugins

### Asyncrun

| key     | function           |
|---------|--------------------|
| <F2>    | 编译当前C文件      |
| <F3>    | 运行当前C文件      |
| <F4>    | 运行当前python文件 |
| <F5>    | 关闭quickfix窗口   |
| <spa>ga | git add .          |
| <spa>gc | git commit - m     |
| <spa>gp | git push origin    |

### Tagbar

| key    | function        |
|--------|-----------------|
| <spa>t | tagbar toggle   |
| f      | jump to the tag |

### Markdown

**insert mode** 
| key | function              |
|-----|-----------------------|
| ;i  | inser a italic block  |
| ;b  | insert a bold block   |
| ;a  | insert a link         |
| ;p  | insert an image       |
| ;c  | inser a code block    |
| ;h  | insert first heading  |
| ;h2 | insert second heading |
| ;f  | find a <++>           |
| ;,  | insert <++>           |

**normal mode** 
Type **<spa>p** to preview markdown.

