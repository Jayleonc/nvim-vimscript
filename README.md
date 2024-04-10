# <center>我的 Neovim 配置！<center>

![demo_1](./image/demo_1.png)
![demo_2](./image/demo_2.png)
![demo_3](./image/demo_3.png)

- **请仔细阅读本介绍文档后使用本配置**

# 如何安装？

```sh
git clone https://github.com/Jayleonc/nvim.git ~/.config/nvim
nvim
```

# 安装后, 您需要:

- [ ] 安装 `pynvim` (pip)
- [ ] 安装 `nodejs`
- [ ] 安装 `ripgrep`
- [ ] 安装 nerd-fonts (用于 Dashboard)

## 可能需要:

- [ ] 执行 `:checkhealth`
- [ ] 确保你有 Python
- [ ] 编辑 `special_cofnig.vim` 进行配置
- [ ] 执行 `pip3 install flake8` (用于代码检查)
- [ ] 安装 `ctags` 用于显示函数/类/变量列表

# 特性

### 超级快！

- 70ms 启动速度
- 将近 40 个插件

### 好上手！

- I,J,K,L 移动

### 功能强！

- 强大的语言支持
- 强大而轻量的插件

---

**这些键位在 init.vim 中的基本键位设置下可定制**

- 许多重新绑定的键我懒得写了，有兴趣去 init.vim 看吧...

---

# 强大的插件

## COC

极其强大的 Vim 补全框架！
通过`:CocConfig`打开配置

### 已经配置支持的语言：

- C / C++ / Objective-C
- Go
- Python

##### 想要配置别的语言十分简单，参考[COC 官方 WIKI](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

### 顺带一提，你可以使用`Alt r`来运行你的代码

---

## Defx

快速轻量的文件管理器，通过 SPC f e 打开

## MarkdownTableMode

轻松用 Vim 制作 Markdown 表格

#### SPC t m 打开

Markdown 编辑实用的快捷键
| 快捷键 | 呈现效果 |
|--------|----------------|
| `,n` | --- |
| `,b` | 文本 **加粗** |
| `,s` | 文本~~中划线~~ |
| `,i` | 文本 _斜体_ |
| `,d` | `代码块` |
| `,c` | 大 `代码块` |
| `,m` | - [ ] 复选框 |
| `,p` | 图片 |
| `,a` | [超链接]() |
| `,1` | # 标题 1 |
| `,2` | ## 标题 2 |
| `,3` | ### 标题 3 |
| `,4` | #### 标题 4 |
| `,l` | -------- |

---

## Vim-clap 和 FZF

两个都是非常好用的文件模糊查找器，都集成在了我的配置中

- Dashboard 中使用 clap 作为默认查找器，你当然可以在 init.vim 中的 Dashboard 设置下更换成 FZF

| Clap 键位 | FZF 键位 | 功能         |
| --------- | -------- | ------------ |
| SPC f f   | `<C-p>`  | 查找文件     |
| SPC f a   | `<C-f>`  | 查找文字     |
| SPC t c   | `NONE`   | 实时更换主题 |

---

