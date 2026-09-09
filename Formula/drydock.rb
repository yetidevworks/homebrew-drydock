class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.3/drydock-darwin-aarch64.tar.gz"
      sha256 "43af0f35dcedd99408715fd98a758fe2498f1011ba9d136ae1fba09a6c6e3aaa"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.3/drydock-darwin-x86_64.tar.gz"
      sha256 "4da81dc74243261c4904e06f79d1b40caaae600aa5f2b50386131d0fbe26fd76"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.3/drydock-linux-aarch64.tar.gz"
      sha256 "6e12f501aa4400473ef4cb27a47789e3b0277bdb9bd6a83bcedb988a6eab66e7"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.3/drydock-linux-x86_64.tar.gz"
      sha256 "88fa6dec6b366fac995af6448d9a683d015205599d4700e0938fef6813e4b7e5"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
