class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.3.1.tar.gz"
  sha256 "f591c3a926976b437d481e42cb9b969b2285e07f854550f71c3feb66989994eb"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["8.3", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.3.1"
    sha256 "13d17770641e01ebd6b63294407e9bfe41cc941bed381e87d14838826a920472" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
