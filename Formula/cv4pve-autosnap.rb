class Cv4pveAutosnap < Formula
  desc "Automatic snapshot tool for Proxmox VE: schedule and manage VM/LXC snapshots with retention policies"
  homepage "https://github.com/Corsinvest/cv4pve-autosnap"
  version "2.2.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.2.1/cv4pve-autosnap-osx-x64.zip"
      sha256 "11da632b87fb0b3fd7875d333d90cc56f6a3bdf17b12a210f8a0da4399d9cd9c"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.2.1/cv4pve-autosnap-osx-arm64.zip"
      sha256 "cd595ad31b747794d3db1d19c4a588f1391d23eed45d722208bcc429940e0861"
    end
  end

  def install
    bin.install "cv4pve-autosnap"
  end

  test do
    assert_match "cv4pve-autosnap", shell_output("#{bin}/cv4pve-autosnap --version")
  end
end
