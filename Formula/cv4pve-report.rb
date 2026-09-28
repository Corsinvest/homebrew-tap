class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.7.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.7.1/cv4pve-report-osx-x64.zip"
      sha256 "102b42b6d74fff6319a89621234c48c76d4a7e85dee9f186b8e869897d2872d3"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.7.1/cv4pve-report-osx-arm64.zip"
      sha256 "7a81f7773c0f2b55efa817b4cf782d526ded6b5551f75fb7f16c092160312f07"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
