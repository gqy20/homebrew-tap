# homebrew-tap

`gqy20` 的 Homebrew tap，用于分发命令行工具。

## 安装

当前 `zotcli` 还没有正式 release，先使用 `HEAD` 安装：

```bash
brew tap gqy20/tap
brew install gqy20/tap/zotcli --HEAD
```

安装完成后可执行：

```bash
zot
```

## 可用 Formula

### `zotcli`

面向终端、脚本和 AI agent 的 Zotero CLI。

- Homebrew 包名：`zotcli`
- 安装后的命令：`zot`
- 项目仓库：`https://github.com/gqy20/zotero_cli`

## 当前状态

`Formula/zotcli.rb` 目前是 `head` formula，因为 `gqy20/zotero_cli` 还没有发布 GitHub Release。

等第一个正式版本发布后，这个 tap 会切换到稳定安装方式。

## 维护说明

维护和发布流程见 `docs/maintainer.md`。
