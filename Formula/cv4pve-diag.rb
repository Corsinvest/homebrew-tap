class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.4.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.4.0/cv4pve-diag-osx-x64.zip"
      sha256 "91e4156ea4fd14b28515ea7a72e3300e07fcf640909c4de29e1f26bc366dfc22"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.4.0/cv4pve-diag-osx-arm64.zip"
      sha256 "5b096278dd19c2c87da82c423c536f490d6a5cb164d7a69de891ac26f0e62839"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
