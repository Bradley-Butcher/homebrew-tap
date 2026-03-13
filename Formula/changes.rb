class Changes < Formula
  desc "A fast, live-updating terminal UI for visualizing git diffs"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "b3977badd25ab5cb60bd85deafe73396d1d83d88188bbf4de3e53e7439a5b3fa"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "76971ffff217971cf49dd89b152efe1e2af7cf901baca2a7dc012c3154880e73"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8c42090d5772849f5ca9c1539f402b1261bf8c1962b084bdcd421fd7db03d453"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
