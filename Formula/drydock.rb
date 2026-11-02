class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.3.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.1/drydock-darwin-aarch64.tar.gz"
      sha256 "f61f482fe62114fc2c9160a54ba8343e9b256f9fc3e35d59cd5026109f3bd9db"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.1/drydock-darwin-x86_64.tar.gz"
      sha256 "388e5ad2dab7fd9f5c1327af5b31a857700cd6c277ac027ff2cd7f0bf13e415e"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.1/drydock-linux-aarch64.tar.gz"
      sha256 "d26550a9a61eb63c6abf92b0b1aa3f05f6e7fe7ec92a9f724a1f62c9e32bddaf"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.1/drydock-linux-x86_64.tar.gz"
      sha256 "bc058a47e23b936a667608c6bd8365f62f99ff331e7fd092451f4ca26fb07cba"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
