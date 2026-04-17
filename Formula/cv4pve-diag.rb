class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.2.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.1/cv4pve-diag-osx-x64.zip"
      sha256 "971756c1a66830c0d2c12ea2c00da8f5ae09d98f6b7ed715138a0403015ed81a"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.1/cv4pve-diag-osx-arm64.zip"
      sha256 "258ac6e11801e82beb6bdd216daf5633765528aa92818a1082c66718a271acb4"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
