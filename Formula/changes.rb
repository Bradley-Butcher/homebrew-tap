class Changes < Formula
  desc "Live git diff viewer for reviewing agent-written code"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "4fa9312e03977b954a531591d20b420afe5fef7adf517eddfa9aff4b29ce59b9"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "750b8d95e4e9c6f0853960e6d1e1e13a83aaacb63150c586e57e92556147a9c0"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0100e23f031768511a3a4b3e7d0d3d753f5a6d23e6345f4538d15e7fc3a6c49c"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
