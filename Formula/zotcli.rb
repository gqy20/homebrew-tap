class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.3"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.3/zot_v0.0.3_darwin_amd64.tar.gz"
      sha256 "500da8d920e89bcd59e99475465e606f1bf7278b379b927c1675ca5ed26b6e71"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.3/zot_v0.0.3_darwin_arm64.tar.gz"
      sha256 "4f3149189d75e6c602d1560523d7b012cbe8155b99f92e3225195a5fc56c60ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.3/zot_v0.0.3_linux_amd64.tar.gz"
      sha256 "f0e2d7de87b4dd58f260c7e6c59e31fb438c3c1827e412a45ce30f0443d95dbc"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.3/zot_v0.0.3_linux_arm64.tar.gz"
      sha256 "132618f23041350045b83b0b29be507a6c51666a78aaca7b04a8481c610172d2"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
