class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.0/drydock-darwin-aarch64.tar.gz"
      sha256 "4a1df3c653cb2da1d2f35606fe4c999e258684c94590597afff18a9e25d50b05"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.0/drydock-darwin-x86_64.tar.gz"
      sha256 "e2a715357ef2e8edafe14155444ddeebed80f8cd98ac3e9e60f5c6304dd25e7d"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.0/drydock-linux-aarch64.tar.gz"
      sha256 "f69299ca66d7fbdefbd053487fed2d0339a02d2d0d1301beec1922f9e37e9230"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.0/drydock-linux-x86_64.tar.gz"
      sha256 "feccac8bf8a52e8faef39d633b4cc8b5bbf10f3cf7a87cbacd7d2d769b8a6539"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
