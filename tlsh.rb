# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tlsh < Formula
  desc "Trend Micro Locality Sensitive Hash"
  homepage "https://github.com/trendmicro/tlsh"
  url "https://github.com/trendmicro/tlsh/archive/v3.4.5.tar.gz"
  sha256 "0383c1f6e888af651ba78c112f7311171802b71b1a2698b2bfb3bc4f1a543bf4"
  depends_on "cmake" => :build
  def install
    system "sh ./make.sh"
    prefix.install Dir["./*"]
    bin.install Dir["bin/*"]
  end
  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test tlsh`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
