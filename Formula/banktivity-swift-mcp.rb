class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.16.0/banktivity-swift-mcp-v0.16.0-macos-universal.tar.gz"
  sha256 "82628da6f9d0608ff96156ef884401777efe84f07196a3003ab6b5e84756f47e"
  version "0.16.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
