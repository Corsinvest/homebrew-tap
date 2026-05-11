class Cv4pveReport < Formula
  desc "Report tool for Proxmox VE — exports full infrastructure inventory to Excel"
  homepage "https://github.com/Corsinvest/cv4pve-report"
  version "2.2.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.2.0/cv4pve-report-osx-x64.zip"
      sha256 "9f35f05bc2aa8823edcede8b04923a6ec928cda3643128274d4dafd7556724b6"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-report/releases/download/v2.2.0/cv4pve-report-osx-arm64.zip"
      sha256 "e981f9e57074b205cbc3c6d83ecae6e005b9cca225d922b481ab2556a530a735"
    end
  end

  def install
    bin.install "cv4pve-report"
  end

  test do
    assert_match "cv4pve-report", shell_output("#{bin}/cv4pve-report --version")
  end
end
