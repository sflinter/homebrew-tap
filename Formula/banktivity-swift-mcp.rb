class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.10.0/banktivity-swift-mcp-v0.10.0-macos-universal.tar.gz"
  sha256 "6f46c9b5ed15d346b785622e2709b6beac8e1a332d53dd68898a50e117c57b7c"
  version "0.10.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
