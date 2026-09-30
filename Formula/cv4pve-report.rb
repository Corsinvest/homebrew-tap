class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE: exports full infrastructure inventory to Excel, HTML or JSON"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.8.1"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.8.1/cv4pve-report-osx-x64.zip"
      sha256 "babd45678d4cd9802355877ec1899a26f11fd0d31f0a9b44358e241be9346454"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.8.1/cv4pve-report-osx-arm64.zip"
      sha256 "6db4b44db0604f7205bce8e651129b33cc8627db6707461ebb775f7ab098d109"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
