# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.10.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.10.0/tfproviderlint_0.10.0_darwin_amd64.tar.gz"
    sha256 "d01c32bfef3c83d1bd695226c7477221ef371fe19cc93de0c681837674780fc0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.10.0/tfproviderlint_0.10.0_linux_amd64.tar.gz"
      sha256 "bf9ff411f7717c2689aa6df685af5a94be8122d92d14d0183d279f868776af8f"
    end
  end
  
  depends_on "go"

  def install
    bin.install "tfproviderlint"
  end

  test do
    system "#{bin}/tfproviderlint -V"
  end
end
