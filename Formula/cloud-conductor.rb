class CloudConductor < Formula
  desc "Lightweight CLI orchestrator for RunPod GPU workloads"
  homepage "https://github.com/sflinter/cloud-conductor"
  url "https://github.com/sflinter/cloud-conductor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3ae9ff9317ad8c81402255531389d38d9a4715260d931350d16bedbe4d271d7e"
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
