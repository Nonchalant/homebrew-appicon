class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.2.1.tar.gz"
  sha256 "8e415053e18681cc3b940e5b77d1aeda889760e9c44d97ac60bb3327a406c761"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["8.3", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.2.1"
    sha256 "2dd13bc1266994083c901dd705a11d756476ca5bfcd39fb4b082a11b23872c98" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
