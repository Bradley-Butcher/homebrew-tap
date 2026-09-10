class Changes < Formula
  desc "Live git diff viewer for reviewing agent-written code"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "ab86402ac33e95ce1411f881004bd5047bbf575d3e593dd829c7bcd334a7043f"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "a75150bf3350792ffbde7fad8990a851fbf1ed294329417a51e79683ae3eba3e"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a9757fa9daa394e4530291f77781e65f0c6494eb3211b1cc4ff82859c673bf3b"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
