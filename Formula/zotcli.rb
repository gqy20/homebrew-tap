class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "0.0.9"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_amd64.tar.gz"
      sha256 "0370be8cd8daacd1aaf968a2b44502fc1861e0210828e3843628bf9f25aa67b5"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_arm64.tar.gz"
      sha256 "8332f477d217ece13bb99f0a5014989d7026550015d7df089f17c159417200da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_amd64.tar.gz"
      sha256 "a77e3850b0837854d4d2df547cbf63021c9b4d1b8dbd8f5d762344e74c7fff7d"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_arm64.tar.gz"
      sha256 "e39b0e35c1cc1d3b6de97edf97e6b0560f7d942a5e83cb88cd63adc2fa63498d"
    end
  end

  def install
    bin.install Dir["**/zot"].first
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
