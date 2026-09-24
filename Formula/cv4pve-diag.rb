class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.6.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.6.0/cv4pve-diag-osx-x64.zip"
      sha256 "0bef77d4bb71139da7b4dbd3c40f4064abd83b79ab1b46464da0e510332dce0d"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.6.0/cv4pve-diag-osx-arm64.zip"
      sha256 "132ad06b0b59b2561a9333f0fe630067770efff2fda28a88ac428ad9f73b1132"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
