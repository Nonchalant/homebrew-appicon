class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/0.3.2.tar.gz"
  sha256 "17acf80239f653357b101ecc4eb404f681964d1eec9926e8ef76f364a2432337"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["9.1", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/0.3.2"
    sha256 "11f1364906d3899555805ecdcc7fdd831c36a47bb6d2299230549e3965710d20" => :sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
