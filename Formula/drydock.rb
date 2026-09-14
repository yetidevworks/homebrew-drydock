class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.4/drydock-darwin-aarch64.tar.gz"
      sha256 "c75507a02647b7448f09b3fb51b1b7ad1e643d8ef59ec0ad2bcf55cef7ed1fa4"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.4/drydock-darwin-x86_64.tar.gz"
      sha256 "e2157d0ac36636b7546ae8a8286bbcad2fa86d8301059bbb6beecfacd2c75723"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.4/drydock-linux-aarch64.tar.gz"
      sha256 "d6d23636223d1608bc4a0dd40c3684f3a208b785964d29707335daebe386c34d"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.4/drydock-linux-x86_64.tar.gz"
      sha256 "055a148826dd27ea2691f71babe00faf02c07be5e26aee8b48dd4e2a0687b42a"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
