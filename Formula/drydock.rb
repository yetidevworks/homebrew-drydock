class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.0/drydock-darwin-aarch64.tar.gz"
      sha256 "f538b32b03fa7ac0243adfbf07f2162ee7584a398e97dfbfc76328440533195f"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.0/drydock-darwin-x86_64.tar.gz"
      sha256 "a7fc8984e41332352a5a865bf70bda60756d679f4361b715dce20cabca33301b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.0/drydock-linux-aarch64.tar.gz"
      sha256 "b532d2a4e4cead97cbed99eb70c2f425cf8928c2af7516390394e7017cbc37b0"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.0/drydock-linux-x86_64.tar.gz"
      sha256 "6bbdb6c8f0b8ece780db67c6133fa08ff676a14ac0906a280f90a61e3d652b75"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
