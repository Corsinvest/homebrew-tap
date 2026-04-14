class Cv4pveAutosnap < Formula
  desc "Automatic snapshot tool for Proxmox VE — schedule and manage VM/LXC snapshots with retention policies"
  homepage "https://github.com/Corsinvest/cv4pve-autosnap"
  version "2.1.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.1.0/cv4pve-autosnap-osx-x64.zip"
      sha256 "beec35889ee7c96722f34f79737015094adbf316fe48d7022a4647a97ad4d1bc"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.1.0/cv4pve-autosnap-osx-arm64.zip"
      sha256 "24a6cf8f3ab5386e1ee3b8f9600cd55665cc1320afd8038c230e3a3acd29a510"
    end
  end

  def install
    bin.install "cv4pve-autosnap"
  end

  test do
    assert_match "cv4pve-autosnap", shell_output("#{bin}/cv4pve-autosnap --version")
  end
end
