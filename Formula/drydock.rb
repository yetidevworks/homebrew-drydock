class Drydock < Formula
  desc "What's uncommitted, unpushed, and unreleased across every repo you own"
  homepage "https://github.com/yetidevworks/drydock"
  license "MIT"
  version "1.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.2/drydock-darwin-aarch64.tar.gz"
      sha256 "73217b7ecd492b920fca69a6c0c30cfca41da142ff842dea740061e9facc86a8"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.2/drydock-darwin-x86_64.tar.gz"
      sha256 "a552fd11a5054d712c425b94cca1e191fcc7d8c0e64b0dd2c3cac91f32d1c8cc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.2/drydock-linux-aarch64.tar.gz"
      sha256 "5fad1505d0571eb1ea23fc5c80699163c74e8d09b8af70c0ef49c7c54fb69d3c"
    else
      url "https://github.com/yetidevworks/drydock/releases/download/v1.1.2/drydock-linux-x86_64.tar.gz"
      sha256 "4abc0727f505366593bca1f989b1e60c3b0ddbdcbcbb6a63655ee9ea9a865dd1"
    end
  end

  def install
    bin.install "drydock"
  end

  test do
    assert_match "drydock", shell_output("#{bin}/drydock --version")
  end
end
