class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.5"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.5/zot_v0.0.5_darwin_amd64.tar.gz"
      sha256 "b37e35c0a31887883bac904c927f06e1962c7dbe7776aa6342731142a59c7ad1"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.5/zot_v0.0.5_darwin_arm64.tar.gz"
      sha256 "fe6f1815b4c2ed1cccb1c251ba6310e4d9bc4636aaf5339662077c119f8f30cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.5/zot_v0.0.5_linux_amd64.tar.gz"
      sha256 "931643cfbae4fc8103a4c74639117ad5c1ee9e8b8385c457973c82f3639ff4df"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.5/zot_v0.0.5_linux_arm64.tar.gz"
      sha256 "99eededf464a400a54b5886fc17cc217cb8a110c868d0064a49dfae59260a195"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
