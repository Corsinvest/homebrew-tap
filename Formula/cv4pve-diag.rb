class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE: checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.8.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.8.0/cv4pve-diag-osx-x64.zip"
      sha256 "e8c00f0d3747034f8a05293c6ebe28f0fb2a31831d993abaa2bca528be4960a6"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.8.0/cv4pve-diag-osx-arm64.zip"
      sha256 "af3855800fdc3237ded1c9b7844bf37cbf382f4bc9a26116adf86b1edfebbf9e"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
