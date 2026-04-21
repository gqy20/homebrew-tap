class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.6"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.6/zot_v0.0.6_darwin_amd64.tar.gz"
      sha256 "1778324c7b275c980e93cbbb0fac0338b0aa67da825e8fd5e09c6af980016221"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.6/zot_v0.0.6_darwin_arm64.tar.gz"
      sha256 "ecd555ac2342ac0ce24d53899734e77b7d056bb81fc280a77d261fd433b7ef18"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.6/zot_v0.0.6_linux_amd64.tar.gz"
      sha256 "79d5998973c8e74fb3934d7651a096ac85bd06a422381880dae57b3046c2bc44"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.6/zot_v0.0.6_linux_arm64.tar.gz"
      sha256 "79efaf5f908998bdf721e21b1f315c671170259259af250d069531996bdcbea1"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
