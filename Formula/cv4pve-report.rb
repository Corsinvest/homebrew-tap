class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.2.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.2.1/cv4pve-report-osx-x64.zip"
      sha256 "8101bdc8b3809f33a8fcf8ba7992e57ed9146eb081aa1606208606aaaf405fc7"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.2.1/cv4pve-report-osx-arm64.zip"
      sha256 "90d0e0df414c73eae3af8e2032296d7ce34430350b4e04c159b957e5ecf67c77"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
