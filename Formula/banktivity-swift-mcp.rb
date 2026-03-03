class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.7.0/banktivity-swift-mcp-v0.7.0-macos-universal.tar.gz"
  sha256 "35cce0c0325fcb42e0eff04ae8d5d13d734cf1d0da65eaf8c36813f4449069e8"
  version "0.7.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
