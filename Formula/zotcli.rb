class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.1/zot_v0.0.1_darwin_amd64.tar.gz"
      sha256 "c6d8cfcbe1404d35770cdebd36954398ac70a5d86ba0c937fd93b1b0de613fac"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.1/zot_v0.0.1_darwin_arm64.tar.gz"
      sha256 "386f885fb66d79792d1b06e3fd87cdc7779a4770140bf3214607ed39203a23a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.1/zot_v0.0.1_linux_amd64.tar.gz"
      sha256 "75c16b8f21312ad01f19b1c95b2a0793bf41dd729305a3fa594e868b02cb7de6"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.1/zot_v0.0.1_linux_arm64.tar.gz"
      sha256 "7fc599daa59f985c9bed32530bcd18c1972874a791df82f2f374754aff4edb96"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
