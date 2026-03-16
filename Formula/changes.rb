class Changes < Formula
  desc "A fast, live-updating terminal UI for visualizing git diffs"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "8a00e84595e7651735ec76024627f3e82753bf1db394f28b3024726525941fc7"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "21526103b514b6a58e5b3f07ae80922eb4e7ecc8a94ad2b8a03d06d18e83b85d"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "94d09c82d9e638c1792aeef24ea3059c029192ae9f5bba8e5c64b65a197e2bed"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
