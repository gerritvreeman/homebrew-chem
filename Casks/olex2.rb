cask "olex2" do
  version "1.5"
  sha256 "40ee824f3acd4fc258328d196f8ca35f3e0c0eb5168d86b0c188f788242a8470"
  url "https://secure.olex2.org/olex2-distro/olex2-#{version}.app.dmg",
      verified: "secure.olex2.org/"
  name "olex2"
  desc "A program containing everything needed to solve, refine and finish small-molecule crystal structures."
  homepage "https://www.olexsys.org/olex2/"
  app "olex2.app"
end
