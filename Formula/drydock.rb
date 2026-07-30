class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.0/drydock-darwin-aarch64.tar.gz"
      sha256 "6c9905721048d98d9291d9992108c0aae30124f4c23fe3cbe14b9ac8febee28e"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.0/drydock-darwin-x86_64.tar.gz"
      sha256 "9bf43faa21bd2ad3e5ea40859d7994a94d5aaec22f29ac2401dd764e077c1172"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.0/drydock-linux-aarch64.tar.gz"
      sha256 "b92dad633a93f7b10b11464da2cd81874c2a4c604963cdde16b0db69d7f44318"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.0/drydock-linux-x86_64.tar.gz"
      sha256 "0bd0c8d6e54c1d883e2b2415ddb734df2ee84fb27c0854fb9716bb4f5b9d7f5d"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
