class Cv4pveNodeProtect < Formula
  desc "Backup Proxmox VE node configuration files via SSH"
  homepage "https://github.com/Corsinvest/cv4pve-node-protect"
  version "2.0.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.0.0/cv4pve-node-protect-osx-x64.zip"
      sha256 "bbb655199137db30a7ecce9c84d5263e2b53db127a021d745d0242b0da9e9a72"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-node-protect/releases/download/v2.0.0/cv4pve-node-protect-osx-arm64.zip"
      sha256 "7230b2900e80e8cb4508943fa9bafd58e7051218bb33df27efbb0eccbf540af1"
    end
  end

  def install
    bin.install "cv4pve-node-protect"
  end

  test do
    assert_match "cv4pve-node-protect", shell_output("#{bin}/cv4pve-node-protect --version")
  end
end
