class Shelx < Formula
  homepage "https://shelx.uni-goettingen.de"
  desc "A set of programs for the determination of small (SM) and macromolecular (MM) crystal structures by single crystal X-ray and neutron diffraction"
  url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxl"
  sha256 "397eb301abbdd84e2ef0f1efe01b6853f945735437096b674e43685d7517b440"
  version "2019.3"

  resource "anode" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/anode.bz2"
    sha256 "7a6ce13333b4e2d1619ebfe168c3e9c3cad2f0b9595d6e31df49c52cd7e05e89"
  end

  resource "ciftab" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/ciftab.bz2"
    sha256 "d54e9cb16d42c30ca44bc785774a7bf128d733fb12febd98760fbfaa096fc3bf"
  end

  resource "pdb2ins" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/pdb2ins"
    sha256 "f98754dddf3809a515ba63acbe3d7ab0ce78c5d83261cdc8da6344ad6b5528c0"
  end

  resource "shelxc" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxc.bz2"
    sha256 "f0b5392ea3b83f4868431b6c304af70f483018c936bb5a0fe72d06905029bd9e"
  end

  resource "shelxd" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxd.bz2"
    sha256 "e1e70dd7a63dbb9cbcc69c2df018f6cac0930cf8e581c8d0ab7e9ceda768b859"
  end

  resource "shelxe" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxe"
    sha256 "01e39bb77ec620ca98281eb8d9cd64d39e9b87e023fd6fcac285ff44812eed75"
  end

  resource "shelxs" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxs.bz2"
    sha256 "b14bebb22b0053f8f9e9dd6a7c1d861e59f87280f03d7ef742b889fa2515250e"
  end

  resource "shelxt" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shelxt.bz2"
    sha256 "00d54003cb9e4a62a7233d27f82528200da579697b107ca06b88eddbd2e76a7f"
  end

  resource "shredcif" do
    url "http://#{ENV["HOMEBREW_SHELX_USER"]}:#{ENV["HOMEBREW_SHELX_PW"]}@shelx.uni-goettingen.de/bin/mac/shredcif.bz2"
    sha256 "fcf11d8aa3fda7633c5763721d0b029c68c59d05010c2eb5f8dda759b83aabd0"
  end

  def install
    bin.install resource("anode")
    bin.install resource("ciftab")
    bin.install resource("pdb2ins")
    bin.install resource("shelxc")
    bin.install resource("shelxd")
    bin.install resource("shelxe")
    bin.install "shelxl"
    bin.install resource("shelxs")
    bin.install resource("shelxt")
    bin.install resource("shredcif")
  end
end
