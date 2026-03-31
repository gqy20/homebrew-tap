class Zotcli < Formula
  desc "Zotero CLI for terminal, scripts, and AI agents"
  homepage "https://github.com/gqy20/zotero_cli"
  license "MIT"

  head "https://github.com/gqy20/zotero_cli.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s
      -w
      -X zotero_cli/internal/cli.version=head
      -X zotero_cli/internal/cli.commit=homebrew
      -X zotero_cli/internal/cli.buildDate=#{time.iso8601}
    ]

    system "go", "build", "-trimpath", "-ldflags", ldflags.join(" "), "-o", bin/"zot", "./cmd/zot"
  end

  test do
    assert_match "zot", shell_output("#{bin}/zot --help")
  end
end
