class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.2.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.2/drydock-darwin-aarch64.tar.gz"
      sha256 "9a0c165aac5dfd0d21e425e0943a194e47a29c84c30e822e1559ab8689517c4a"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.2/drydock-darwin-x86_64.tar.gz"
      sha256 "c6676e12c2f1a3454be8724d77c2f5196da364adeff8f4f862e372ce6fbd0a77"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.2/drydock-linux-aarch64.tar.gz"
      sha256 "c7f56ec22991177700890fb0247c40895dfd5bbf3ab4f750b2dcbed2bfe1c0e4"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.2/drydock-linux-x86_64.tar.gz"
      sha256 "6b297fc19dc83c54663c26b701bc64b33a3ec82c75b9993a1afbe5c7c64a8eed"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
