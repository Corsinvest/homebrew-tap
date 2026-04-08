class Cv4pveDiag < Formula
  desc "Diagnostic Tool for Proxmox VE"
  homepage "https://github.com/Corsinvest/cv4pve-diag"
  version "2.1.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.1.0/cv4pve-diag-osx-x64.zip"
      sha256 "5cf84e9d46991b4aa9f2df71e9ed0741b3668306b43a049c8590173c185b36cf"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-diag/releases/download/v2.1.0/cv4pve-diag-osx-arm64.zip"
      sha256 "beaf94b58b60cc3abb7375b08299b5a41243337c1bd5e5872e1905dd2651d9af"
    end
  end

  def install
    bin.install "cv4pve-diag"
  end

  test do
    assert_match "cv4pve-diag", shell_output("#{bin}/cv4pve-diag --version")
  end
end
