class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.5/drydock-darwin-aarch64.tar.gz"
      sha256 "b8b40f0fdf12574529d301a5aa1f7c489b9794ffd3c75dac732e966cbff057f2"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.5/drydock-darwin-x86_64.tar.gz"
      sha256 "a0f2cdfc7f0663009ea32dc2dafcccfc1fce4b7305e4a69fe046b38c9e582776"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.5/drydock-linux-aarch64.tar.gz"
      sha256 "c3d20b9d549aa8cce8c593405dd2d244f14e8727e2451506e0e0c5b6b957297e"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.5/drydock-linux-x86_64.tar.gz"
      sha256 "28a2db82c1daf5f48b8658e35ab3a514f1e747a37d2621789a2453b8c962553a"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
