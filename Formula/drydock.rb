class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.0/drydock-darwin-aarch64.tar.gz"
      sha256 "87145a5980c08368262a0cb33c63350cccfccc30f778100cad082466e9229d4a"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.0/drydock-darwin-x86_64.tar.gz"
      sha256 "3273bef1d08781101167f1536a009dbcac1381b51eb5eda732ccac6ee134cd4c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.0/drydock-linux-aarch64.tar.gz"
      sha256 "207b7744ffbd24236d3dba5b97233daff1cd92d33c9c9df683bb543e48ab0561"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.3.0/drydock-linux-x86_64.tar.gz"
      sha256 "e83ec29f780b1fcaa95069f6a85a396c1728b3714f74f9f58929ea4e4d36c396"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
