class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.1.tar.gz"
  sha256 "5f00b13c87067cdce2ffb89df61961243e6c58700a4b4b78be2580c67cad13c6"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["9.4", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.1"
    sha256 "b4c72c07938df9ff490891a1852502862e458d8edad14db8476dc842381576f0" => :high_sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
