class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.4"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.4/zot_v0.0.4_darwin_amd64.tar.gz"
      sha256 "da0b9904af6f0405e60586f8cc19dcb503a50e5074bb0c4cfbb38738f8957392"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.4/zot_v0.0.4_darwin_arm64.tar.gz"
      sha256 "bac3882ea0468e0efe27df0b43f81bce69069d1678631c41515f68cc0e34ed8b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.4/zot_v0.0.4_linux_amd64.tar.gz"
      sha256 "967692573debbb251da68ee5a3e93f6efa467c01cbeff4ef07cb87870c955c27"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.4/zot_v0.0.4_linux_arm64.tar.gz"
      sha256 "2607996bab0f5a9e70674cb7110e9e754b3a947a5611d1be31c0b734aacc6810"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
