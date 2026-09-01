class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.1/drydock-darwin-aarch64.tar.gz"
      sha256 "036d98e8773786e83375cccda23a00b808a1595e2e687217a0afadec3b0c97ee"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.1/drydock-darwin-x86_64.tar.gz"
      sha256 "2573c16b63a0a8cc04552cff824ae933342ebe06b6d4b9d6f5a30abc6b604058"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.1/drydock-linux-aarch64.tar.gz"
      sha256 "d38ad0367da13eb0e108909bc378f5c5ae3fa8c3ebd355666b8c6741a0a938fc"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.1/drydock-linux-x86_64.tar.gz"
      sha256 "f25195204627e7946dbb19d68761f4e9433ba19dbbe7b1cf8ca233a05207b742"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
