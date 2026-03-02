class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.6.0/banktivity-swift-mcp-v0.6.0-macos-universal.tar.gz"
  sha256 "afcda48cc7d16c81d99e6ea71b864090e36ee4e13544ebe3e668bdc72b004777"
  version "0.6.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
