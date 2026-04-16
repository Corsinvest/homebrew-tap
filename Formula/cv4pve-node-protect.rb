class Cv4pveNodeProtect < Formula
  desc "Backup Proxmox VE node configuration files via SSH"
  homepage "https://github.com/Corsinvest/cv4pve-node-protect"
  version "2.0.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.0.1/cv4pve-node-protect-osx-x64.zip"
      sha256 "ed17485d85b42d52cb3d299726396c5e897ff2c7d66d9890858d6e1826c3b4cd"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.0.1/cv4pve-node-protect-osx-arm64.zip"
      sha256 "ae8e478e091cb7b4f56972c15f6541524b562a8fd403c8cdbefac8e1a54e4f58"
    end
  end

  def install
    bin.install "cv4pve-node-protect"
  end

  test do
    assert_match "cv4pve-node-protect", shell_output("#{bin}/cv4pve-node-protect --version")
  end
end
