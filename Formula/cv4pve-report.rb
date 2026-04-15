class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "1.8.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.8.0/cv4pve-report-osx-x64.zip"
      sha256 "d0f778cab7fd33284a2a69a2900c6e50b428670933c03e1518534930388e66ee"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.8.0/cv4pve-report-osx-arm64.zip"
      sha256 "838a05b22e52451886a29415245a82625847154dc6a40265693152816fbf157b"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
