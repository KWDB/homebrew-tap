class KwdbPlaygroundAT070 < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "0.7.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "9fbf1a516418d4f299414a0d012ce442e38b1c0ef5c066564d1a2156c8c5edf8"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "202ab77aeaae498c69c2852cde387d446bf9df18b3167678a61e36eab3f341bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "12f981be3087135b3355423f0270172ffd20fccfd5a308264f26b525a2776771"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "97a14d443c2b90a3d7736ea200ed73f3b67344178face447e310a843f1251eaa"
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
