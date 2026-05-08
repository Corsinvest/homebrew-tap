class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.0.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.0.0/cv4pve-report-osx-x64.zip"
      sha256 "7a11a2bcd31ce63699c5c8c87462d481749485f121cdaffecef1edbc68b88fb7"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.0.0/cv4pve-report-osx-arm64.zip"
      sha256 "64cdc08373d72193d3fb47f6e9f0ee952fb59a90ab355e059900c91f54da6e29"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
