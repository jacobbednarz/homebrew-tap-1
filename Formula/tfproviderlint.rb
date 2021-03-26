# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.26.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.26.0/tfproviderlint_0.26.0_darwin_amd64.tar.gz"
    sha256 "d6b305deb5715c001e89b9204b5084f43a8dafa5317c2e862149355476d55922"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.26.0/tfproviderlint_0.26.0_linux_amd64.tar.gz"
    sha256 "d56b8a970c626f30b21a46315bae523c024650e64c416bc3d22120b9af3b8cf3"
  end

  depends_on "go"

  def install
    bin.install "tfproviderlint"
  end

  test do
    system "#{bin}/tfproviderlint -V"
  end
end
