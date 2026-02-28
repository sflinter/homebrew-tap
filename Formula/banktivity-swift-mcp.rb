class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.3.0/banktivity-swift-mcp-v0.3.0-macos-universal.tar.gz"
  sha256 "3c50c04d3c3cb2a703902d64f6597705c80b628e62c1cc0e4dc6c7629595d5ea"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
