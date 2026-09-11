class Changes < Formula
  desc "Live git diff viewer for reviewing agent-written code"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "c3f8afa3d3e031c5950b21571170c321240f59df56772de9a728c1c71268b030"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "f447875fb7ef486aae699ae0b9c7f42565b78589d638557f541a3e279911a9c8"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cbb2a92c409719498bbda9129b4a8954bdb8e70b7c21c6e2585d1f6480ff3405"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
