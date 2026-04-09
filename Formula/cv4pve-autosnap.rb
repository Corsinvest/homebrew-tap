class Cv4pveAutosnap < Formula
  desc "Automatic snapshot tool for Proxmox VE — schedule and manage VM/LXC snapshots with retention policies"
  homepage "https://github.com/Corsinvest/cv4pve-autosnap"
  version "2.0.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.0.1/cv4pve-autosnap-osx-x64.zip"
      sha256 "eedbd692179fe921c57cbbba707915f5130c2955a26035871b29a2a908753fce"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.0.1/cv4pve-autosnap-osx-arm64.zip"
      sha256 "fe5c7bf82439da65f4c82d0ac001d7cc0b25387ef4ab4bc791ef11c35251ad45"
    end
  end

  def install
    bin.install "cv4pve-autosnap"
  end

  test do
    assert_match "cv4pve-autosnap", shell_output("#{bin}/cv4pve-autosnap --version")
  end
end
