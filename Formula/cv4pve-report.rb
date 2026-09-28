class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.7.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.7.0/cv4pve-report-osx-x64.zip"
      sha256 "de2729f984ba5d109138637cfa90e0ba3bd6baab428d4369f7c666c14937198a"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.7.0/cv4pve-report-osx-arm64.zip"
      sha256 "2ab8e8013442d0cb9c1ca60e99aaeb21c1406b6e90747cc9c907bd9233aa786e"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
