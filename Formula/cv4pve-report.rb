class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.0.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.0.1/cv4pve-report-osx-x64.zip"
      sha256 "aa551c9e9c64fb0e96c6db2880bf75285a16a932517b26ffa58726605820f0fa"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.0.1/cv4pve-report-osx-arm64.zip"
      sha256 "b58ac536da073746f11e266d1c6cbc7d5ec6d8ac7acc9c9451072aa1c3b4c12b"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
