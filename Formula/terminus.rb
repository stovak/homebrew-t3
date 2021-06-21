# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Terminus < Formula
  desc "Pantheon Terminus"
  homepage "https://pantheon.io/terminus"
  license "MIT"
  url "https://github.com/pantheon-systems/terminus/archive/refs/tags/3.0.0-alpha6.tar.gz"
  sha256 "60a9dd625625a9b2dea5f8b4ce7cb23c365798773e1c110a02a19735057fcfdb"
  version "3.0.0-alpha6"
  
  depends_on "php@7.4"
  depends_on "composer"
  depends_on "git"

  def install
    ENV.deparallelize
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "composer install"
    #system "composer phar:build"
    bin.install "t3" => "t3"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test terminus#v`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
