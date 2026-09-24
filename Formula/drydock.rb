class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.2.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.1/drydock-darwin-aarch64.tar.gz"
      sha256 "eac8992d793e1531a44944d0d0fb40fb3cb716d63c933203fc045bb54ce08edd"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.1/drydock-darwin-x86_64.tar.gz"
      sha256 "2fca53076dfe0fbc382323eeb1825305b9aeed3b60653a10206fbd82a360476c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.1/drydock-linux-aarch64.tar.gz"
      sha256 "dba51ba2a968cf5dbee4c954337cf914c32f46085a3ecaa6210542cae6509bc6"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.2.1/drydock-linux-x86_64.tar.gz"
      sha256 "e6ad5ebf6a6c2472a75fc58073b8cdbd94075a9101f63c0c3c308fc4bc3c6c69"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
