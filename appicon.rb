class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.3.0.tar.gz"
  sha256 "f591c3a926976b437d481e42cb9b969b2285e07f854550f71c3feb66989994eb"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["8.3", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.3.0"
    sha256 "e9d66df40ffcc680dc5a49e1ec84cee8339b929010a13ba5c760202de5f6cf33" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
