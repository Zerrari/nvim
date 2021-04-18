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
| &lt;F2&gt;    | 编译当前C文件      |
| &lt;F3&gt;    | 运行当前C文件      |
| &lt;F4&gt;    | 运行当前python文件 |
| &lt;F5&gt;    | 关闭quickfix窗口   |
| &lt;spa&gt;ga | git add .          |
| &lt;spa&gt;gc | git commit - m     |
| &lt;spa&gt;gp | git push origin    |

### Tagbar

| key    | function        |
|--------|-----------------|
| &lt;spa&gt;t | tagbar toggle   |
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

Type **&lt;spa&gt;p** to preview markdown.

