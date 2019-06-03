# This file was generated by GoReleaser. DO NOT EDIT.
class Tfproviderlint < Formula
  desc "Terraform Provider Linter"
  homepage "https://github.com/bflad/tfproviderlint"
  url "https://github.com/bflad/tfproviderlint/releases/download/v0.2.0/tfproviderlint_0.2.0_darwin_amd64.tar.gz"
  version "0.2.0"
  sha256 "34425dc6338f7902e717bb24e008515321403b118695e1e6b94b3f382134c560"
  
  depends_on "go"

  def install
    bin.install "tfproviderlint"
  end

  test do
    system "#{bin}/tfproviderlint -v"
  end
end
