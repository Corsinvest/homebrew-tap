class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.1.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.1.0/cv4pve-report-osx-x64.zip"
      sha256 "a95b98fe012ad7ebf5a86ecf7998e0e9268ae4d1fdb3645030651f31fe3dd289"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.1.0/cv4pve-report-osx-arm64.zip"
      sha256 "f739292d65b73f0542890a954a8ff7585679b203b505c24234bc032c6fe216ab"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
