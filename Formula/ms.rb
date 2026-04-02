class Ms < Formula
  desc "MiniMax Studio CLI - AI video generation toolkit"
  homepage "https://github.com/gqy20/minimax-studio"
  license "MIT"
  version "v0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/gqy20/minimax-studio/releases/download/v0.1.0/ms_v0.1.0_darwin_amd64.tar.gz"
      sha256 "bbfa2c23116b4f43101f0635bd6fbd4e41d794ccf932a1c056df809ea46356a7"
    end
    on_arm do
      url "https://github.com/gqy20/minimax-studio/releases/download/v0.1.0/ms_v0.1.0_darwin_arm64.tar.gz"
      sha256 "e1cdbd9a244c9d7fc841017464547b7af083de7288de9a21330bcc815bec349f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gqy20/minimax-studio/releases/download/v0.1.0/ms_v0.1.0_linux_amd64.tar.gz"
      sha256 "5da2de68bbbfe01e81b30d1d13e831bde3181ec6237776c1933da6999a27cf1c"
    end
    on_arm do
      url "https://github.com/gqy20/minimax-studio/releases/download/v0.1.0/ms_v0.1.0_linux_arm64.tar.gz"
      sha256 "d3f9b319a07da808aac3db811b1d8f4a55a9faa7ee15c6085f71ace06bf4f90e"
    end
  end

  def install
    bin.install "ms"
  end

  test do
    assert_match "ms", shell_output("#{bin}/ms --help")
  end
end
