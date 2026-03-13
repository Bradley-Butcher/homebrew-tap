class Changes < Formula
  desc "A fast, live-updating terminal UI for visualizing git diffs"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
