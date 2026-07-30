class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.3/drydock-darwin-aarch64.tar.gz"
      sha256 "224d88f047aacdb16b2179b817fa7c48506a8ceda2f62d103f731f1aa6d3b68d"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.3/drydock-darwin-x86_64.tar.gz"
      sha256 "b3062a560f753576e8bcba07fae913484e259a29c3552f0fb55dbe1f4787fee4"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.3/drydock-linux-aarch64.tar.gz"
      sha256 "6cebcf5fda1e0a0434456de63a94fcefd62de7277d103e5c11617ffd090b42fc"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.3/drydock-linux-x86_64.tar.gz"
      sha256 "71391fedc7edc0236943286261b552aaa2159997f89ee81cf509042e070f633b"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
