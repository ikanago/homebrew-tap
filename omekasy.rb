class Omekasy < Formula
  desc "Decorate alphanumeric characters in your input with various font; special characters in Unicode"
  homepage "https://github.com/ikanago/omekasy"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    url "#{homepage}/releases/download/v#{version}/omekasy-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c516bb17ca32f4ff97d5ab233d21bcfcf8a19d5b88d9667d1c09c5dcfaad1431"
  elsif OS.linux?
    url "#{homepage}/releases/download/v#{version}/omekasy-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7214ab43c583a7e531a1ab932468cc775dc20e5baa81869bfe6608ef6c522cb2"
  end

  def install
    bin.install "omekasy"
  end

  test do
    system("#{bin}/omekasy", "-h")
  end
end
