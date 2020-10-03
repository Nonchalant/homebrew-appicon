class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.5.tar.gz"
  sha256 "dfd0239216ea6dcbf3ea99f599d144b6d8bf6e854d594e6ec93d34eaa8c28e09"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["12", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.5"
    sha256 "ccf261cf9206410bc1adf77996bc3c4461d3199de75e65193e755504f98cfb6e" => :catalina
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
