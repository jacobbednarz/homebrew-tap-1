# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  version "0.18.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bflad/tfproviderlint/releases/download/v0.18.0/tfproviderlint_0.18.0_darwin_amd64.tar.gz"
    sha256 "8acc980389da0a121200effccfeeb7be7d9c75aa3c1dba3b16a658bd45693b78"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bflad/tfproviderlint/releases/download/v0.18.0/tfproviderlint_0.18.0_linux_amd64.tar.gz"
      sha256 "1f6998a4bf794530b3a7a295c4bb2f476dc4920ae7bcc0167827b111d8c1cff7"
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
