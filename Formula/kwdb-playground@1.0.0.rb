class KwdbPlaygroundAT100 < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "1.0.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "e70e493e5c0def1fb65573eab3764185942d89ade4177a39c9bcb234d943e464"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "1122a158dd58bd1835cbfcb13b1d78240718466f6fe213a9aaa5f3f62dd441a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "5f261a829aa8cf3992d1784a7685a7a21b2183a1515ce084d61e4161978b675e"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "6833d0c93056375c850f7d31ac9670d71f500a646a7138c6bcb2416aabac25c1"
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
