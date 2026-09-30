class Cv4pveMetricsExporter < Formula
  desc "Metrics exporter for Proxmox VE"
  homepage "https://github.com/Corsinvest/cv4pve-metrics-exporter"
  version "2.1.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-metrics-exporter/releases/download/v2.1.0/cv4pve-metrics-exporter-osx-x64.zip"
      sha256 "eddc377076d9483ba4ae1f28bad6e4cdec729123c000988d869be27229f8ac8c"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-metrics-exporter/releases/download/v2.1.0/cv4pve-metrics-exporter-osx-arm64.zip"
      sha256 "7b330227dcfb0b6591b649ee464d2f2c942ef81094d1a0775a1965e9fae6be8a"
    end
  end

  def install
    bin.install "cv4pve-metrics-exporter"
  end

  test do
    assert_match "cv4pve-metrics-exporter", shell_output("#{bin}/cv4pve-metrics-exporter --version")
  end
end
