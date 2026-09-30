class Cv4pveAutosnap < Formula
  desc "Automatic snapshot tool for Proxmox VE: schedule and manage VM/LXC snapshots with retention policies"
  homepage "https://github.com/Corsinvest/cv4pve-autosnap"
  version "2.2.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.2.0/cv4pve-autosnap-osx-x64.zip"
      sha256 "208bdb4f9e5de452dd498d551a9490f43cbffe345ddfde93383dd9cac51aef84"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.2.0/cv4pve-autosnap-osx-arm64.zip"
      sha256 "81bad5b35c849399a76b10ebf889edbbb496c82285c8811e428dc4c8163b66dd"
    end
  end

  def install
    bin.install "cv4pve-autosnap"
  end

  test do
    assert_match "cv4pve-autosnap", shell_output("#{bin}/cv4pve-autosnap --version")
  end
end
