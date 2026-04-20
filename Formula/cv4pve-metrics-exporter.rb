class Cv4pveMetricsExporter < Formula
  desc "Metrics exporter for Proxmox VE"
  homepage "https://github.com/Corsinvest/cv4pve-metrics-exporter"
  version "2.0.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/Corsinvest/cv4pve-metrics-exporter/releases/download/v2.0.0/cv4pve-metrics-exporter-osx-x64.zip"
      sha256 "e4f15bc076acfcf89af7850c1c4efc8de551631304f43c3b96c3a36b400e1f6e"
    end
    on_arm do
      url "https://github.com/Corsinvest/cv4pve-metrics-exporter/releases/download/v2.0.0/cv4pve-metrics-exporter-osx-arm64.zip"
      sha256 "db7a74987f64122d71b23ab7b60d4458e69c958218f8759aa17d2dc976825a90"
    end
  end

  def install
    bin.install "cv4pve-metrics-exporter"
  end

  test do
    assert_match "cv4pve-metrics-exporter", shell_output("#{bin}/cv4pve-metrics-exporter --version")
  end
end
