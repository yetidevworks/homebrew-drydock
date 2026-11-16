class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.4.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.1/drydock-darwin-aarch64.tar.gz"
      sha256 "d64505e24928befb852875461f69d0d3c3aab5bda6e11b68952d2596e61020b8"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.1/drydock-darwin-x86_64.tar.gz"
      sha256 "1ba174ad386c393c140d1943aaae2f7c4379f58f1ac6a5a7c7bca069d31d5e33"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.1/drydock-linux-aarch64.tar.gz"
      sha256 "c5d13f04f7752c7957b5c2415c36e8df7271d1d2573abc3065d6f92b92f5962b"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.1/drydock-linux-x86_64.tar.gz"
      sha256 "55e2aac5b2fb2bf28a323664727a0e76ec95d21d5e3057476ba575626e993cd6"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
