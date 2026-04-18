class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.2.2"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.2/cv4pve-diag-osx-x64.zip"
      sha256 "a8176587e474b3247ddf247734d1f44e62577c061bad38d8b03f77860158ca7f"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.2/cv4pve-diag-osx-arm64.zip"
      sha256 "846ab818db498ba851afd7722c18ff8f54637fa8cb0c360c9dc6ceca002d7fca"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
