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

## 切换到正式 release

已完成。`zotcli` 已使用 v0.0.1 release 的预编译二进制文件。

后续升级时：

1. 获取新版本的 SHA256 checksum
2. 更新 `Formula/zotcli.rb` 中的 `version` 和 `url`
3. 提交并推送到这个 tap 仓库

## 面向用户的安装方式

正式 release 上线后，README 中的安装命令可以调整为：

```bash
brew tap gqy20/tap
brew install zotcli
```
