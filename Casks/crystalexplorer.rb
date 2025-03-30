cask "crystalexplorer" do
  version "21.3"
  sha256 "cb74e3254258fc7f36b5e32e4923eb3d072c93a1a7f4bbfd812df70e79314042"

  url "https://releases.crystalexplorer.net/CrystalExplorer-#{version}-Darwin.dmg",
      verified: "releases.crystalexplorer.net/"
  name "CrystalExplorer-21"
  desc "Hirshfeld surfaces, interaction energies and more..."
  homepage "https://crystalexplorer.net"

  app "CrystalExplorer.app"
end
