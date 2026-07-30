class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.1/drydock-darwin-aarch64.tar.gz"
      sha256 "994b5bff5512d69c29c9e9672d83f2579572213129e6ef1c684fb3c9d9c05a95"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.1/drydock-darwin-x86_64.tar.gz"
      sha256 "bd42530c9960b8fc1c25a483496c75063ba38118bea2345ae2d5f4c5b55745f0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.1/drydock-linux-aarch64.tar.gz"
      sha256 "fbeb411c5e4a998f3b85d3fafcf36c13934b2a717b2677caa54aaf3f97f63176"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.1/drydock-linux-x86_64.tar.gz"
      sha256 "11265a4586e35f2f7420d6c96b181a3747ca9360ed8b42abc5038a38405d0267"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
