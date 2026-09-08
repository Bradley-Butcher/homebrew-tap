class Changes < Formula
  desc "Live git diff viewer for reviewing agent-written code"
  homepage "https://github.com/Bradley-Butcher/Changes"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-aarch64-apple-darwin.tar.gz"
      sha256 "a84792a93ee068b7668b0c789684a39bbf7537c86261d7d4cc82b4ad9f107d2e"
    else
      url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-apple-darwin.tar.gz"
      sha256 "bb8931be98092935d88ea5a93a0f1826fe15d43238191b2b760d25d1d5f59836"
    end
  end

  on_linux do
    url "https://github.com/Bradley-Butcher/Changes/releases/download/v#{version}/changes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5c001c7ceb4aa6d97e905a79e972e08b7f20a6dbe62b0360d25c74a711546b8f"
  end

  def install
    bin.install "changes"
  end

  test do
    assert_match "changes", shell_output("#{bin}/changes --version")
  end
end
