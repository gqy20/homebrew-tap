class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.8"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_amd64.tar.gz"
      sha256 "0e3aebb56d4f06255d16a1047101d26d5f74823aae5a51a7d1c4b4cf9a9bce72"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_arm64.tar.gz"
      sha256 "f05021e578ecd3e01f220d532b0f4c25bffaeadcf62c081390af1f0a8e9347f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_amd64.tar.gz"
      sha256 "47e936949d1d11624a7ac884e083004257eb59c5a17c13b58b7f10f40d6b675f"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_arm64.tar.gz"
      sha256 "09aa5c06a3466e965fe4251a0c01db80fb1b07daab4224668a433091f78063ee"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
