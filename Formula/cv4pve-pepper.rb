class Cv4pvePepper < Formula
  desc "SPICE/VNC console launcher for Proxmox VE — connect to VMs with a single command"
  homepage "https://github.com/Corsinvest/cv4pve-pepper"
  version "2.0.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-pepper/releases/download/v2.0.1/cv4pve-pepper-osx-x64.zip"
      sha256 "05f00fce456d21c97a851a3350f233397113989dd1f5e6d85d3088cc31314897"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-pepper/releases/download/v2.0.1/cv4pve-pepper-osx-arm64.zip"
      sha256 "7daf4dd822d0f58fa2c9af55f3268854233c486fca227e66c6cc8f55bfb4c952"
    end
  end

  def install
    bin.install "cv4pve-pepper"
  end

  test do
    assert_match "cv4pve-pepper", shell_output("#{bin}/cv4pve-pepper --version")
  end
end
