class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.4/drydock-darwin-aarch64.tar.gz"
      sha256 "ba7314256479140ad47477238c2145f871cf6124341fdd501b8e85e52b94cfa1"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.4/drydock-darwin-x86_64.tar.gz"
      sha256 "0ec2b48f34ce658bd0dfcf11d323d09d66a5f352d0eeb53f8aa4e4dbbdfa77ee"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.4/drydock-linux-aarch64.tar.gz"
      sha256 "7ee45e9233ec92f48c0f0035b2b802eb719ad9e853a4f8864f7582fdfbadca17"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.4/drydock-linux-x86_64.tar.gz"
      sha256 "2d9d4be4d7ee5c491dbc5f2f777b498df5fc023bfe45d4d829bd8e6f6f0d9572"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
