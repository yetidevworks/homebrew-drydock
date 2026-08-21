class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.7/drydock-darwin-aarch64.tar.gz"
      sha256 "786349bcf4564ee9f75e389d33d9e5739382bfeeec578b36d2fe91af219f942a"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.7/drydock-darwin-x86_64.tar.gz"
      sha256 "dd0b651cb9fdd37aeb053644bbb28c1b58a1bb93e38d36c124c74775875c6893"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.7/drydock-linux-aarch64.tar.gz"
      sha256 "afd6c25b1eca21a9bc53e7a50fc2c0019cc690f1af1b645048cd870a2e5106df"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.7/drydock-linux-x86_64.tar.gz"
      sha256 "23969fb91c0aa01c4a9eb2c3da511da73ac2f147862dcdbb30a2e0ce7bbd14d3"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
