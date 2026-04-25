class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "0.0.9"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_amd64.tar.gz"
      sha256 "bf886d3f295ab97dd3365347be0c625d00238c3e9dc0fdbc97ab4f044c561ea3"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_arm64.tar.gz"
      sha256 "c7e9da038ca38a017bcf2c058de6bca2706b431d456e3154c824894246737b3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_amd64.tar.gz"
      sha256 "1165290b67c73bbd5f79b49a56d92d79505a7d411e5e8afa0f914bd67aef7157"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_arm64.tar.gz"
      sha256 "295c39c2ae0ce6936f52868ca85c2f2f9573cd7b0bdeba63c2eec79223b664de"
    end
  end

  def install
    bin.install Dir["**/zot"].first
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
