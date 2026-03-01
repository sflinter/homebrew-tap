class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.5.0/banktivity-swift-mcp-v0.5.0-macos-universal.tar.gz"
  sha256 "802fae866f4b5482091a8fa3cb06b3f9c96530e5e7a3a8d5ea176652978ceb26"
  version "0.5.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
