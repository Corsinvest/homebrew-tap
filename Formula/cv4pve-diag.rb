class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.3.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.3.0/cv4pve-diag-osx-x64.zip"
      sha256 "7ae6a1ab55c10bf669017ecbd24c472f7352d820613359a6627c3ab65759c1d8"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.3.0/cv4pve-diag-osx-arm64.zip"
      sha256 "f5c309ed1a19cbb85bed145c56b6151bd09d2f61f4d95ef4be9f776618ffe523"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
