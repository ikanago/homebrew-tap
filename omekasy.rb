class Omekasy < Formula
  desc "Decorate alphanumeric characters in your input with various font; special characters in Unicode"
  homepage "https://github.com/ikanago/omekasy"
  version "1.0.0"
  license "MIT"

  if OS.mac?
    url "#{homepage}/releases/download/v#{version}/omekasy-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "70f6f09d05e64ec5b7046f003ff45f359032059cb58b2e8ae8946ee19e9f868b"
  elsif OS.linux?
    url "#{homepage}/releases/download/v#{version}/omekasy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0bf637a542ca3d7f0602fc0169a3ff5ac41467576e131dc5b010510d343857ec"
  end

  def install
    bin.install "omekasy"
  end

  test do
    system("#{bin}/omekasy", "-h")
  end
end
