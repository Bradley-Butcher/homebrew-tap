class Changes < Formula
  desc "A fast, live-updating terminal UI for visualizing git diffs"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "238ce0fc959737bfcae80a1a95017b38affe5c969c505caab02a7e3319adf8ad"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "fb3ea11132bfb72fa96bd2eebe75c3d7f9d796137ced730567740d994f2e9c8a"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "242ded4e0868273c81c5b171a1a2ff6c1c9f09752a4a7f43c623cae4b380aa04"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
