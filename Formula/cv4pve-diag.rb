class Cv4pveDiag < Formula
  desc "Diagnostic tool for Proxmox VE — checks nodes, VMs, LXC containers and storage for common issues"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.2.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.0/cv4pve-diag-osx-x64.zip"
      sha256 "3ad8a63cf87cd8af04929314e6872cb7202099ad69693a221ea01b2ad5663020"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.2.0/cv4pve-diag-osx-arm64.zip"
      sha256 "8db514dacc786b13c753e0484b58d4a090127b11ee4fe54e4dd7775798a8b8fb"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
