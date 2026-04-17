# 维护说明

这个文档记录 `homebrew-tap` 的本地调试、发布和后续升级流程。

## 本地调试

将本地仓库注册为 tap：

```bash
brew tap gqy20/tap /absolute/path/to/homebrew-tap
```

从本地 tap 安装：

```bash
brew install gqy20/tap/zotcli
```

验证命令：

```bash
zot --help
```

## 首次创建远端仓库

```bash
gh repo create gqy20/homebrew-tap --public --source . --remote origin
git push -u origin main
```

## 正式 release 与自动更新

已完成。`zotcli` 当前使用 `gqy20/zotero_cli` 正式 release 的预编译二进制文件。

后续升级默认由 `gqy20/zotero_cli` 的 release workflow 自动完成：

1. 在 `zotero_cli` 仓库推送新的 `v*` tag
2. release workflow 发布 GitHub Release
3. workflow 自动更新本仓库的 `Formula/zotcli.rb`

如果自动化失效，再回退到手工流程：

1. 获取新版本的 SHA256 checksum
2. 更新 `Formula/zotcli.rb` 中的 `version`、`url` 和 `sha256`
3. 提交并推送到这个 tap 仓库

## 面向用户的安装方式

正式 release 上线后，README 中的安装命令可以调整为：

```bash
brew tap gqy20/tap
brew install zotcli
```
