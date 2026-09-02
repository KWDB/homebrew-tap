class KwdbPlaygroundAT143 < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "1.4.3"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "827dd9d0615f4961745c40309ad5ee56346f93953e27b2ec67861377a5cef4ec"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "9c17f1d1010ac6dda1efab69a9f1e937f01773062d55f53081a27d87762b648e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "16b8dfb063a3abd36d7c3a39c6cf34275ad1076d48d252390b8d041a59aa5e1f"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "bd154efc080a78e3a9067ff7024bc3aed80e154a0f3f05426f15f2e2d1db2df4"
    end
  end

  def install
    bin.install "kwdb-playground"
  end

  def caveats
    <<~EOS
      To get started, simply run:
        kwdb-playground start
      The server will run on http://localhost:3006 by default.
      For configuration options:
        kwdb-playground --help
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwdb-playground version")
  end
end
