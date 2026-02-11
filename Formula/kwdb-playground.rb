class KwdbPlayground < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA"

      def install
        bin.install "kwdb-playground"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA"

      def install
        bin.install "kwdb-playground"
      end
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA"

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
