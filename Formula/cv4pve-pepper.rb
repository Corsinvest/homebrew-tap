class Cv4pvePepper < Formula
  desc "SPICE/VNC console launcher for Proxmox VE — connect to VMs with a single command"
  homepage "https://github.com/Corsinvest/cv4pve-pepper"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-pepper/releases/download/v2.0.0/cv4pve-pepper-osx-x64.zip"
      sha256 "579b869e871988fa4155abd7724762d2ee8bc901e433f88ab05fc6d24836a6f8"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-pepper/releases/download/v2.0.0/cv4pve-pepper-osx-arm64.zip"
      sha256 "35665fa2b5c871a03bf5e42d792a8fe1917cb5a4b448b22c67026b132a5e4141"
    end
  end

  def install
    bin.install "cv4pve-pepper"
  end

  test do
    assert_match "cv4pve-pepper", shell_output("#{bin}/cv4pve-pepper --version")
  end
end
