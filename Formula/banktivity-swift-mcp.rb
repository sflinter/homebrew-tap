class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.8.0/banktivity-swift-mcp-v0.8.0-macos-universal.tar.gz"
  sha256 "a4028a7967d075860715ed77567bc5bfbcf1a2202048674c4e8f976cb8a78caf"
  version "0.8.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
