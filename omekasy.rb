class Omekasy < Formula
  desc "Decorate alphanumeric characters in your input with various font; special characters in Unicode"
  homepage "https://github.com/ikanago/omekasy"
  version "1.3.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "#{homepage}/releases/download/v#{version}/omekasy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d550b755d9aae2ebc3987ba496340ff8aa4150cbced144eb2e339499fe336bf8"
    elsif Hardware::CPU.arm?
      url "#{homepage}/releases/download/v#{version}/omekasy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f2740fb40aa3b598e0c4ae3cfa879460814c1e193f040982ff9a713d4ffd25c6"
    end
  elsif OS.linux?
    url "#{homepage}/releases/download/v#{version}/omekasy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d07c0fe49474d794f83fd455784201117a33f7062e18df9b6c13a6826c18e5c"
  end

  def install
    bin.install "omekasy"
  end

  test do
    system("#{bin}/omekasy", "-h")
  end
end
