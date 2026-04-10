class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "1.5.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.5.0/cv4pve-report-osx-x64.zip"
      sha256 "e4a19a2ed0d10a73d7019d180bab7de7eeecf2cdf044983eb2249bf5aa3a0130"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.5.0/cv4pve-report-osx-arm64.zip"
      sha256 "57ce3ccc40510b5c5af86b242870b7e1f508867e1e8fad8c06b3a76ea19648b6"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
