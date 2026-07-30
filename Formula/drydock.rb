class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.2/drydock-darwin-aarch64.tar.gz"
      sha256 "1fd663311fa0e1f72e03910cff439056add6f2ed76cc1f91da4f2258f1779f09"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.2/drydock-darwin-x86_64.tar.gz"
      sha256 "3c7f1f0a1a409caebf7b8bc93b11af137f31fb19f33ae2304e45b43262f2b910"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.2/drydock-linux-aarch64.tar.gz"
      sha256 "14518ac06d1af254be45ef255e415a3aa3ee5ef74627389635899d04085ff6e0"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.2/drydock-linux-x86_64.tar.gz"
      sha256 "f38d64412acba0079c7ca0aff1dda2ec600b5ae51748b24ad29825a7bcdaffc2"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
