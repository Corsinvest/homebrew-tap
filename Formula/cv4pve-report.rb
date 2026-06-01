class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.5.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.5.1/cv4pve-report-osx-x64.zip"
      sha256 "374a39a1d7fbc6bc6dfe317dbb76f74c9daf16678bb84eb42d4e2a1dccb1d9b5"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.5.1/cv4pve-report-osx-arm64.zip"
      sha256 "a1567b64e1f86e3068d091fe461e67c0ee7413246ad35751c0c8fb64d74da0de"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
