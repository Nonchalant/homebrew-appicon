class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.4.tar.gz"
  sha256 "c97832ed6994550c7f439000a7b6ea1ffa495a23e7dbad9aa5cf1ba77b541aec"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["10.1", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.4"
    sha256 "9ca60898e315454c346837a40eef10f0d75c78c4d45f9d6246aa842f8a9fa069" => :catalina
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
