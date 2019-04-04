class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.3.tar.gz"
  sha256 "cd744d263658a695b5ac91163bbda0aca35fcfc3101359af5b4095e7bcd4b607"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["10.1", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.3"
    sha256 "38a7008bab0e7db69c0dfaf2aeced504eea4d1a0263f531cfa79412495004dc1" => :mojave
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
