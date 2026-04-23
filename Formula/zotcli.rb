class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.8"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_amd64.tar.gz"
      sha256 "914bcfa1710a8b73bf35b833fb8b1d6a8f8d9574ed1cc1a2e89d2156d68fb15f"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_arm64.tar.gz"
      sha256 "67f640ac84b60c2a8a8ebc6d3423bc4925a2c0f4d404b3ea5a1f6208595bd8c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_amd64.tar.gz"
      sha256 "e667082fa47d949deebb7df7f0e96ff1df5680d52d3bbfc9c9fb44841f73aa25"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_arm64.tar.gz"
      sha256 "a6404c487b8a5a18f2c62c15609998d09a28612a6dae9f8e61ef1d940eec9694"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
