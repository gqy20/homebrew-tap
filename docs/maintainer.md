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

## 自动更新（GitHub Actions）

本 tap 使用自托管的 GitHub Actions workflow 自动更新 formula 版本。

### 工作原理

`.github/workflows/update-formulas.yml` 每 6 小时自动执行：

1. 检查所有上游仓库的最新 release tag
2. 与当前 `.rb` 文件中的 version 对比
3. 如有新版本：从 `checksums.txt` 获取 sha256 → 重写 formula → 更新 README
4. 通过 `peter-evans/create-pull-request` 自动创建 PR

### 配置新 Formula

在 workflow 的 `matrix.include` 中添加一条记录即可：

```yaml
- formula: mytool
  class_name: Mytool
  repo: gqy20/mytool
  desc: "My tool description"
  homepage: "https://github.com/gqy20/mytool"
  license: MIT
  binary: mytool
  test_match: mytool
  platforms: "darwin_amd64 darwin_arm64 linux_amd64 linux_arm64"
```

**前提条件**：上游仓库的 release 需要附带 `checksums.txt` 文件，格式为 `<sha256>  <filename>`。

### 手动触发

可在 GitHub Actions 页面手动触发 `Update Formulas` workflow，或使用 CLI：

```bash
gh workflow run update-formulas.yml
```

### 手工回退流程

如果自动化失效，可手动更新：

1. 获取新版本的 SHA256 checksum（从上游 release 的 `checksums.txt`）
2. 更新 `Formula/<name>.rb` 中的 `version`、`url` 和 `sha256`
3. 提交并推送到这个 tap 仓库

## 面向用户的安装方式

```bash
brew tap gqy20/tap
brew install zotcli   # 或 ms
```
