class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.3.3.tar.gz"
  sha256 "13b5fe44a15beff0f3b8910ae805c1866018997ecc3149e501939e3523e7300b"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["9.1", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.3.3"
    sha256 "872c23ce268f5946c14f3d8ac1dd974ae2ae08ce3d1f3966681280dec5413acd" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
