class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.18.0/banktivity-swift-mcp-v0.18.0-macos-universal.tar.gz"
  sha256 "ef8642113b461ac12365c1c059d17f6d70ceda9e5df3aff960e993b2ea3296c3"
  version "0.18.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "banktivity-cli"
    bin.install "banktivity-mcp"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/banktivity-cli --version")
  end
end
