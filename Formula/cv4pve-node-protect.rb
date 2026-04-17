class Cv4pveNodeProtect < Formula
  desc "Backup Proxmox VE node configuration files via SSH"
  homepage "https://github.com/Corsinvest/cv4pve-node-protect"
  version "2.1.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.1.0/cv4pve-node-protect-osx-x64.zip"
      sha256 "e1e6e2f48005d68944b49f946645cba69dadb5cf997fdb86cf307fd5dee14141"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.1.0/cv4pve-node-protect-osx-arm64.zip"
      sha256 "87c40281e9fa097eaf77d9b6e7f48a7af6a5f92f66075727457d4e2cd8708e2c"
    end
  end

  def install
    bin.install "cv4pve-node-protect"
  end

  test do
    assert_match "cv4pve-node-protect", shell_output("#{bin}/cv4pve-node-protect --version")
  end
end
