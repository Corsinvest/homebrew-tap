class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.5.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.5.0/cv4pve-diag-osx-x64.zip"
      sha256 "8fc6e301c719082cdc7bbe2a34aa47204249b432c23e1d6aa1d9339caa250ecb"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.5.0/cv4pve-diag-osx-arm64.zip"
      sha256 "ce52d7e2f2725174236b15934ed9779cfb55ca9df4724fd0244ed410283a2e72"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
