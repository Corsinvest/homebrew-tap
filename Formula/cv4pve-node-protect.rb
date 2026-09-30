class Cv4pveNodeProtect < Formula
  desc "Backup Proxmox VE node configuration files via SSH"
  homepage "https://github.com/Corsinvest/cv4pve-node-protect"
  version "2.2.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.2.0/cv4pve-node-protect-osx-x64.zip"
      sha256 "044c00106506001bbbf8604bb0d26f31bfc04701c8965b1b65693675db16cc61"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.2.0/cv4pve-node-protect-osx-arm64.zip"
      sha256 "8a96aa251af387a68f2d9e3f1249dacdaeaaa383da441f3998c1686d68790fca"
    end
  end

  def install
    bin.install "cv4pve-node-protect"
  end

  test do
    assert_match "cv4pve-node-protect", shell_output("#{bin}/cv4pve-node-protect --version")
  end
end
