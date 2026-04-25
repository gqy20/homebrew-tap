class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.9"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_amd64.tar.gz"
      sha256 "634fecebef0646e0d8802fec4eb12e077fcf6636295a719ab93b77e010d3ad25"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_darwin_arm64.tar.gz"
      sha256 "0db4434ea1b4cee3f32dae34b80d2a3c9346ae6ef59ad947adeb33b668179273"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_amd64.tar.gz"
      sha256 "06c5c6f630e2effdd55d2529d7513707c35b74411ec670d41bf3d12d2dc6d34b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.9/zot_v0.0.9_linux_arm64.tar.gz"
      sha256 "a051c59e3efb2378fa541ff42c0b4da026fa4fba430d910b70e45621afb72826"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("\#{bin}/zot --help")
  end
end
