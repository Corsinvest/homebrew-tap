class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.5.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.5.0/cv4pve-report-osx-x64.zip"
      sha256 "3f217b8fa1fa0a442aab5cda03190097ac946cb77ee72c555975110b4d62151b"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.5.0/cv4pve-report-osx-arm64.zip"
      sha256 "cad94d45ca8119cba60ab2e66d7e03d7a7f53c8d406d063f8428c99e84a918ad"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
