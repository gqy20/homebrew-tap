class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.7"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.7/zot_v0.0.7_darwin_amd64.tar.gz"
      sha256 "0a61421d7f27b8916b97bba3e1dce959e84df75c44857258eb1d43fe488f3809"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.7/zot_v0.0.7_darwin_arm64.tar.gz"
      sha256 "46641b7204e12d26e2b970678021f18682d68e22ecff9902fb39d9760d08360c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.7/zot_v0.0.7_linux_amd64.tar.gz"
      sha256 "f8efc8aada2da513f35dc1ac104b4dfbbf68327e52ac38bf5925961e1d9413b7"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.7/zot_v0.0.7_linux_arm64.tar.gz"
      sha256 "46cc3dbe527bdb721a39023e3a532075ec7d942bc00141cdfc393e8b1346400a"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
