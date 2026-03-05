class BanktivitySwiftMcp < Formula
  desc "MCP server and CLI for Banktivity personal finance vaults"
  homepage "https://github.com/sflinter/banktivity-swift-mcp"
  url "https://github.com/sflinter/banktivity-swift-mcp/releases/download/v0.8.0/banktivity-swift-mcp-v0.8.0-macos-universal.tar.gz"
  sha256 "f384b55bd11ca516c0e7e270ae68be65f5f576207538e1d338ef1566144fe651"
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
