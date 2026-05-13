class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.2.3"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.3/cv4pve-diag-osx-x64.zip"
      sha256 "13151bdb096c60a0d484142c3aa14736e8b52646723e88728055245348b4d4a3"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.3/cv4pve-diag-osx-arm64.zip"
      sha256 "fe44a986ba6ccc007b1ee4afb83a09bcfc4273c2c99d063ca5a44d4c7568f42e"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
