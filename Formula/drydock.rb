class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.4.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.0/drydock-darwin-aarch64.tar.gz"
      sha256 "cd96b40747c74875babc4b6aa1f3418b5a1eaaf8b6d634f0b45c8594fcfbc317"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.0/drydock-darwin-x86_64.tar.gz"
      sha256 "94657fa1ec48fa5f81fa071b09db52c7b9136fc5c648be1d12e12a1652eeedaf"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.0/drydock-linux-aarch64.tar.gz"
      sha256 "e4136b05a92bbbd44d6e93adf1aff1f597b36227773cfe3a4697064850c3a487"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.4.0/drydock-linux-x86_64.tar.gz"
      sha256 "e3799fce539950e6b773f8b5d85bbed5663b02e12784e3a82cc20d865ce1cdaa"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
