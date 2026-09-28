class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.7.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.7.0/cv4pve-diag-osx-x64.zip"
      sha256 "bdb997154de60ae4e9a64e64d7ba4b9caa26aef78c64818c00b596080ead4413"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.7.0/cv4pve-diag-osx-arm64.zip"
      sha256 "65f2805b8f9a8c2cd21cce414010d9b6e4ade504788d3fe8eedf5cc4755961c7"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
