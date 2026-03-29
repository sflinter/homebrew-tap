class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.11.0/banktivity-swift-mcp-v0.11.0-macos-universal.tar.gz"
  sha256 "6bdd031061f58727bb88a6ae4a6f24335677229cb33a3ae4d146407b4b5fa8a1"
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
