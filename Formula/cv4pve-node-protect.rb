class Cv4pveNodeProtect < Formula
  desc "Backup Proxmox VE node configuration files via SSH"
  homepage "https://github.com/Corsinvest/cv4pve-node-protect"
  version "2.1.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.1.1/cv4pve-node-protect-osx-x64.zip"
      sha256 "62f53d0b89a1ef2bd205a97b23adf3663c9920fb52311ecbb0fd352f96d77e7e"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.1.1/cv4pve-node-protect-osx-arm64.zip"
      sha256 "46a703367082798718745d6f3720ad33ad2d893b8c954d5aed7a75677ab29f54"
    end
  end

  def install
    bin.install "cv4pve-node-protect"
  end

  test do
    assert_match "cv4pve-node-protect", shell_output("#{bin}/cv4pve-node-protect --version")
  end
end
