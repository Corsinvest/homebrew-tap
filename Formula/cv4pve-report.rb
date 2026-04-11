class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "1.6.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.6.0/cv4pve-report-osx-x64.zip"
      sha256 "ed1f37ef4a4ad6073512f09fa86c270ca70500811a0da0059a928179b4926928"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v1.6.0/cv4pve-report-osx-arm64.zip"
      sha256 "d5a5dc6d81ef98c3ae89e29c8113c955089c440ba8649d7cad86ae340637f6ae"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
