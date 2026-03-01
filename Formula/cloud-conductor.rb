class CloudConductor < Formula
  desc "Lightweight CLI orchestrator for RunPod GPU workloads"
  homepage "https://github.com/sflinter/cloud-conductor"
  url "https://github.com/sflinter/cloud-conductor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3ae9ff9317ad8c81402255531389d38d9a4715260d931350d16bedbe4d271d7e"
  license "MIT"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    system "uv", "venv", "--python", "python3.12", libexec/"venv"
    system libexec/"venv/bin/pip", "install", "."
    (bin/"conductor").write_env_script libexec/"venv/bin/conductor",
      PATH: "#{Formula["uv"].opt_bin}:${PATH}"
  end

  test do
    assert_match "Cloud Conductor", shell_output("#{bin}/conductor --help")
  end
end
