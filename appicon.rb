# typed: false
# frozen_string_literal: true

# AppIcon Homebrew Formula
class Appicon < Formula
  desc "Generation of iOS AppIcon.appiconset made easy"
  homepage "https://github.com/Nonchalant/AppIcon"
  url "https://github.com/Nonchalant/AppIcon/archive/1.0.6.tar.gz"
  sha256 "723ff3349081916c22f3cbd29f328113a28858a898f84fdc8b8d3e4329fc31f2"

  head "https://github.com/Nonchalant/AppIcon.git", branch: "master"

  bottle do
    root_url "https://github.com/Nonchalant/AppIcon/releases/download/1.0.6"
    sha256 ventura: "29d838a754c1916372c7a48f75286aa2174d9d0335e3a8e954ced7065cf2b1e0"
  end

  depends_on xcode: ["14", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"appicon"
  end
end
