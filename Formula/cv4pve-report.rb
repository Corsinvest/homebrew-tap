class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.8.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.8.0/cv4pve-report-osx-x64.zip"
      sha256 "9c6d552dec5cca0d45724e8b91312c5c3051e46f5dc92ba0d06577e2549fe2a9"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.8.0/cv4pve-report-osx-arm64.zip"
      sha256 "00dd300ad3f6cfbd96cdf8a2cdf57e2d824727e80cac6b4cccf383376a67c5c1"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
