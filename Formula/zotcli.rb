class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.10"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.10/zot_v0.0.10_darwin_amd64.tar.gz"
      sha256 "6282d096d2d5806afad992dc1f61166cbb666db4c403e3dc14561514151b21c6"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.10/zot_v0.0.10_darwin_arm64.tar.gz"
      sha256 "b89c5c6794cdf1272375d2ba7eef7da5c63730565dd9051546c40cc2bbcf2dc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.10/zot_v0.0.10_linux_amd64.tar.gz"
      sha256 "ba141d4baec7a458c1cec2cda2ac9fd6a7ae6e702191ba472de1ca1f62d5b2c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.10/zot_v0.0.10_linux_arm64.tar.gz"
      sha256 "f334edec7e478badcb5bd6daf16b7194383a63da22173aaee725beeef3ab921a"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("\#{bin}/zot --help")
  end
end
