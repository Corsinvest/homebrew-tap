class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.3.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.3.0/cv4pve-report-osx-x64.zip"
      sha256 "af0387c634bb733b08d4c86f33ddad55806e39f51d6ee299a9564f86488c0f9f"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.3.0/cv4pve-report-osx-arm64.zip"
      sha256 "08e3a051fc4928115f3774f28761f16aefbbd0287702c98451205d65e1ba82d7"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
