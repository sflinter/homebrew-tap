class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.9.0/banktivity-swift-mcp-v0.9.0-macos-universal.tar.gz"
  sha256 "b86bda706847eb561fbd62ecf98bbdab5a06257b4c0f44454ee6416cb58785f8"
  version "0.9.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
