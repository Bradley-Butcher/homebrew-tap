class Changes < Formula
  desc "Live git diff viewer for reviewing agent-written code"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "b99b1df8fb9b3bf1acfd6e4ac518acc1ccf9cb4de911b9be958722f80b23b502"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "48015aa82d0b7361fa97bbb4fcc1424d3b8b6682ba1380a72b97027299d01bcc"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "091668933a877fd51c84cd7706690564f42b08e7d5e1501c361b82ebc43a1953"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
