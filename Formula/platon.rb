class Platon < Formula
  desc "Multipurpose crystallographic tool"
  homepage "http://www.platonsoft.nl/platon/"
  url "http://www.platonsoft.nl/xraysoft/unix/platon.tar.gz"
  version "260325"
  sha256 "6f37d8ae66a9060e1a35c1c1f757d5b2238822bc8bef055dc3cb21a893506e13"

  depends_on "gcc" # for gfortran
  depends_on "libx11"

  def install
    system "gunzip", "platon.f.gz", "xdrvr.c.gz"
    system "gfortran", "-o", "platon", "platon.f", "xdrvr.c",
                       "-I#{Formula["libx11"].opt_include}",
                       "-I#{Formula["xorgproto"].opt_include}",
                       "-L#{Formula["libx11"].opt_lib}", "-lX11"
    bin.install "platon"
    bin.install "check.def"

    rm_f "platon"
    system "tar", "xfz", "platon_html.tar.gz"
    pkgshare.install "platon"
    pkgshare.install "s810c.cif"
  end

  def caveats; <<~EOS
    Please also install XQuartz (`brew install --cask xquartz`).
    EOS
  end

  test do
    output = shell_output("platon -o test.out s810c.cif </dev/null")
    assert_match "NORMAL END of PLATON", output
  end
end
