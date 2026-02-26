class KwdbPlayground < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "3f78141360f4b979607b41ccceb71b5b7b60cfd068df7bc5c7dc0f175fbc935e"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "f356de4cf2422060e652738f4754cd0cffe49565467a94fbb5330b4b627b4188"

      def install
        bin.install "kwdb-playground"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "d59e53b4a4d993080399bc2c520be5839bf65a67e11d820e0111e6b67b89b903"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "eb0b2e7e58a7a1abcae1215de08f7e744544d48cf7765ff99dd6cce3ef57a238"

      def install
        bin.install "kwdb-playground"
      end
    end
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
