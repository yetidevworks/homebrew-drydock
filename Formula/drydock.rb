class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "0.1.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.6/drydock-darwin-aarch64.tar.gz"
      sha256 "746a9a0435ac21d43019c3a4fe0bcfb7d7e6f49f3008fc6588e01aad81e9f55b"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.6/drydock-darwin-x86_64.tar.gz"
      sha256 "6de81b3014a3eb7a9730799567af9bede17bc6ffed7ccd7b7afaed4a57bed116"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.6/drydock-linux-aarch64.tar.gz"
      sha256 "731325a77e733935d5ee1e6cf10e04ba3ef63192d65ba815fda1d3e42a9733f2"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v0.1.6/drydock-linux-x86_64.tar.gz"
      sha256 "6bf614007a7bd7fb80464a0c0323c08faafb4dd31a07b50de266c1a0837515ad"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
