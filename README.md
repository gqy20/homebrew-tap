# homebrew-tap

`gqy20` 的 Homebrew tap 仓库，用来发布命令行工具。

## 当前可用 Formula

### `zotcli`

- 安装包名：`zotcli`
- 安装后的命令：`zot`
- 源代码仓库：`https://github.com/gqy20/zotero_cli`

## 本地预览

将本地仓库注册为 tap：

```bash
brew tap gqy20/tap /absolute/path/to/homebrew-tap
```

从本地 tap 安装：

```bash
brew install gqy20/tap/zotcli --HEAD
```

验证命令是否可用：

```bash
zot --help
```

## 发布这个 Tap

创建 GitHub 仓库：

```bash
gh repo create gqy20/homebrew-tap --public --source . --remote origin
```

推送本地仓库：

```bash
git push -u origin main
```

发布后，用户可以这样安装：

```bash
brew tap gqy20/tap
brew install zotcli
```

## 后续切换到正式发布版

当前 `zotcli` 还是 `head` formula，因为 `gqy20/zotero_cli` 还没有 GitHub Release。

等第一个 tag/release 发出后：

1. 把 `Formula/zotcli.rb` 改成 release tarball 的 `url`
2. 补上对应版本源码包的 `sha256`
3. 提交并推送到这个 tap 仓库
