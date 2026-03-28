class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.11.0/banktivity-swift-mcp-v0.11.0-macos-universal.tar.gz"
  sha256 "59877a33ab8d01aedc07f8b975eaf6c760289e6475ecd61d87dd05a647bcc094"
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
