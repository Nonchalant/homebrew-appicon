class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.0.tar.gz"
  sha256 "10fe74277c9beed3c8468ef5443bc3f28b50f036da42d9c199eaa9b6d2a0d01b"

  head 'https://github.com/Nonchalant/AppIcon.git', :branch => 'master'

  depends_on :xcode => ["9.4", :build]

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.0"
    sha256 "8ba47a30dbed401d8b93e7c48dbefcab2aa08a59074036c396eb9c2e795a099b" => :high_sierra
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
