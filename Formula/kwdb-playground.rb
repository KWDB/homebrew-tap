class KwdbPlayground < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "86e42c2d727e7b027bb021f27d4e186c5ee2701b9123ac80ccf2aa084f41d90e"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "11522ae2b796c5cfc8977ecd749a40224e73fd9aabac7b432ab7b91874fc87e0"

      def install
        bin.install "kwdb-playground"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "05f869ff68a2a7146465648b7358ad0a6c0461fcbe416bdf2c7c269e0d84f04c"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "c40a6752be75b3be01ff92ca754dc350ee97c6c7434d182b26f8be6061753dee"

      def install
        bin.install "kwdb-playground"
      end
    end
  end

  def caveats
    <<~EOS
      Start the KWDB Playground server:
        kwdb-playground server

      The server will run on http://localhost:3006 by default.

      For configuration options:
        kwdb-playground server --help
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwdb-playground version")
  end
end
