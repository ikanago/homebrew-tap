class ojisan_fuck < Formula
  desc "Brain-fuck interpreter parsing emoji used by Japanese ojisans"
  homepage "https://github.com/ikanago/ojisan_f-ck"
  version "0.1.3"
  license "MIT"

  if OS.mac?
    url "#{homepage}/releases/download/v#{version}/ojisan_fuck-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "335dd687ed5a422fa5b5fd811125e2a303ac471cc94b0a874872123db6496c80"
  elsif OS.linux?
    url "#{homepage}/releases/download/v#{version}/ojisan_fuck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0355a6568e2cf1b9e855c7d7d5ba3d3bc402be7273ebdd50d0e51ce186dd6aaa"
  end

  def install
    bin.install "ojisan_fuck"
  end

  test do
    system("#{bin}/ojisan_fuck", "-h")
  end
end
