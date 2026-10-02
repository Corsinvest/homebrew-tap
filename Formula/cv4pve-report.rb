class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE: exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.9.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.9.0/cv4pve-report-osx-x64.zip"
      sha256 "e1e5649af365a94a82052ff2c9e10ab1266f98c5721392489d4c15d76a9921d6"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.9.0/cv4pve-report-osx-arm64.zip"
      sha256 "97c9523a67c2ad5f3716658e82beeb6d81d77c5e1592ff9fe11e49ffb7402181"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
