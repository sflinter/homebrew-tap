class CloudConductor < Formula
  desc "Lightweight CLI orchestrator for RunPod GPU workloads"
  homepage "https://github.com/sflinter/cloud-conductor"
  url "https://github.com/sflinter/cloud-conductor/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "bb1acef46fdd0f3251e04bd5608a05bf33655534d3fb975f1fcc9be046856725"
  license "MIT"

  depends_on "python@3.12"

  def install
    python3 = Formula["python@3.12"].opt_bin/"python3.12"
    system python3, "-m", "venv", libexec/"venv"
    system libexec/"venv/bin/pip", "install", buildpath
    bin.install_symlink libexec/"venv/bin/conductor"
  end

  test do
    assert_match "Cloud Conductor", shell_output("#{bin}/conductor --help")
  end
end
