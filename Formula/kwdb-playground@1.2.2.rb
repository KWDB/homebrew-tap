class KwdbPlaygroundAT122 < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "1.2.2"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "34258854b53969e202d322197eccfbd147e825eef03d3c22c24b6170df865b00"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "56cac0d37d07b567aaabafaba7ab8548d4e3297d934bb7b5c19f873fac734d32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "78ce4b1c3dbe5dc70e5a9be5e64d1bac9f619ab1d98fe14c93e3471763c64253"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "9b26eb57cdbaaa2282d4e5bf50773b4e2a80db97ac5ea7a54a750ed31b258d7b"
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
