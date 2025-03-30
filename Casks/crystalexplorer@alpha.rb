cask "crystalexplorer@alpha" do
  version "25.3a"
  sha256 "072907d09dbf81fb88d59b3eafebf8b24c28c3fd70d821ece82e799bd2fd2675"

  url "https://github.com/peterspackman/crystalexplorer/releases/download/v#{version}/CrystalExplorer-25.03-macos-arm64.dmg",
      verified: "https://github.com/peterspackman/crystalexplorer/"
  name "CrystalExplorer"
  desc "Hirshfeld surfaces, interaction energies and more..."
  homepage "https://crystalexplorer.net"
  conflicts_with cask: "crystalexplorer"

  app "CrystalExplorer.app"
end
