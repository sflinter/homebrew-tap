class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.11.0/banktivity-swift-mcp-v0.11.0-macos-universal.tar.gz"
  sha256 "d679e38b830f3b8c3b6709ed9d2a208e8af093f7f57d7e55d78fb8c438b000a2"
  version "0.11.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
