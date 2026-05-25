class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.4.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.4.0/cv4pve-report-osx-x64.zip"
      sha256 "4fd905223a3f4edf2721d5ee5b06c2334faf278ebbf386ef10e2678e72ed2e92"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.4.0/cv4pve-report-osx-arm64.zip"
      sha256 "8f4ab371f3b23ccce5c48b8e93fbb68ab1c3f2a139de307650994e4c7a06b1f7"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
