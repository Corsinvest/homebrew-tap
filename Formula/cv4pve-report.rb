class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.6.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.6.0/cv4pve-report-osx-x64.zip"
      sha256 "0c591848a51969682eb492511fbc0bec23a4839d871ea6621b0982e1f48eac0f"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.6.0/cv4pve-report-osx-arm64.zip"
      sha256 "b6bcf5a721173963ea01303650dfbffdc81e551942f10e0ff64d56eb6b0d2c98"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
