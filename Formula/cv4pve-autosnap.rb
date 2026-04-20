class Cv4pveAutosnap < Formula
  desc "Automatic snapshot tool for Proxmox VE — schedule and manage VM/LXC snapshots with retention policies"
  homepage "https://github.com/Corsinvest/cv4pve-autosnap"
  version "2.1.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.1.1/cv4pve-autosnap-osx-x64.zip"
      sha256 "48166035f658412977201469be545189936c70f82d777e9b7f5de52172898016"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-autosnap/releases/download/v2.1.1/cv4pve-autosnap-osx-arm64.zip"
      sha256 "66b4a5f253477a660c977288865b82035369b059e162828d69e89eb81d051c7b"
    end
  end

  def install
    bin.install "cv4pve-autosnap"
  end

  test do
    assert_match "cv4pve-autosnap", shell_output("#{bin}/cv4pve-autosnap --version")
  end
end
