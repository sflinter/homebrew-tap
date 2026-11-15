class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.17.0/banktivity-swift-mcp-v0.17.0-macos-universal.tar.gz"
  sha256 "9614278919013fb9dc40f991ea43ad71d3fa21883c4ba3183ed286bd3f4a5bf2"
  version "0.17.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
