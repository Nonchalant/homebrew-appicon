class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.2.2.tar.gz"
  sha256 "063bfb8a1359417c5ec8394e08bbfa92a3e1d2248615ae28c229cd565b6c92ba"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["8.3", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.2.2"
    sha256 "063bfb8a1359417c5ec8394e08bbfa92a3e1d2248615ae28c229cd565b6c92ba" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
