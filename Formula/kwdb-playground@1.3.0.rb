class KwdbPlaygroundAT130 < Formula
  desc "Interactive KWDB learning platform with Docker-based hands-on exercises"
  homepage "https://github.com/kwdb/playground"
  version "1.3.0"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-arm64.tar.gz"
      sha256 "df2e757b8e097c74de4cfce4c4695f7850d3cf3095cf496edf8a6a637577da7d"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-darwin-amd64.tar.gz"
      sha256 "bd8f65620944f66f25591be8c8e5454ff2188e2717af295df06e54161b7af9bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-arm64.tar.gz"
      sha256 "b1da2d79900398e8dd693b6ff59d3466b4d482d4fa9a47cd641ddf276a3a092d"
    end
    on_intel do
      url "https://github.com/kwdb/playground/releases/download/v#{version}/kwdb-playground-linux-amd64.tar.gz"
      sha256 "230fc71d6b362ed6ab164e202ea65c59fcf6b9c4958f059ded75019bfb19ff23"
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
