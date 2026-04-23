class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"
  version "v0.0.8"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_amd64.tar.gz"
      sha256 "7dd4df97f598b43a1d638a8cbf126cd1354e8596dd1eed264d2c43b9fcbf51f8"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_darwin_arm64.tar.gz"
      sha256 "f70ade1f04276da2afb71abe2e418721eae0652dbae52d42735486096aa67c9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_amd64.tar.gz"
      sha256 "d904b08d22a0aab101c21a960bc03427a4c564635b6ae0de1b9fd2daa65d5770"
    end
    on_arm do
      url "https://github.com/gqy20/zotero_cli/releases/download/v0.0.8/zot_v0.0.8_linux_arm64.tar.gz"
      sha256 "ad36d2beb6a04e4c9fce15dfb73af1599c5feee16e0f232ecc1feff9c4f48dc4"
    end
  end

  def install
    bin.install "zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
