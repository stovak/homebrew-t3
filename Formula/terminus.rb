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
    system "composer install"
    #system "composer phar:build"
    bin.install "t3" => "t3"
  end

  test do
    system "true"
  end
end
