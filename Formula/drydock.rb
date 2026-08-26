class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.0.0/drydock-darwin-aarch64.tar.gz"
      sha256 "32f14400ab26c72693389fd057fca13b8b4975bec4182a1dc9c45e2fb8081240"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.0.0/drydock-darwin-x86_64.tar.gz"
      sha256 "0811ce699c1fde2102daf75a7fc06104e2a8d223a3c7b4e6e317c150eebe9580"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.0.0/drydock-linux-aarch64.tar.gz"
      sha256 "d8bbae56f8fc82045486d7c729b6427e42e77ba32bd87bc0b7b9a00d893574a8"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.0.0/drydock-linux-x86_64.tar.gz"
      sha256 "122097d8318b069028493eb075a7d48f712a97ad724912cbc8cb6425f30b1663"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
