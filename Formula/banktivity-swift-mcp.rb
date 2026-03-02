class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.6.1/banktivity-swift-mcp-v0.6.1-macos-universal.tar.gz"
  sha256 "014f243436f69718150b5fc53a4011815f9bb3ef9c2cd7c7d094214b3e3c8ee9"
  version "0.6.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/banktivity-cli --version")
  end
end
