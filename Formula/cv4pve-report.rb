class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "1.7.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.7.0/cv4pve-report-osx-x64.zip"
      sha256 "7540be5c133bfa2c87978d122213f729768e1ebcc362623ee2a6624445f3dcf7"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.7.0/cv4pve-report-osx-arm64.zip"
      sha256 "051940fb6a72ddd6072e75cc8f68536e14bcfb50fe9773793887926adbfd7973"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
