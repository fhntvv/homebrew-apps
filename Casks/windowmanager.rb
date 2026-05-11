cask "windowmanager" do
  version "0.3.0"
  sha256 "878263bf3bd5a1e4265c2a76be2b543b18e3e278ba7028e1d2666f251ad6ee7b"

  url "https://github.com/fhntvv/window-manager/releases/download/v#{version}/WindowManager-#{version}.dmg"
  name "WindowManager"
  desc "Keyboard-driven window manager for macOS"
  homepage "https://github.com/fhntvv/window-manager"

  depends_on macos: ">= :ventura"

  app "WindowManager.app"

  zap trash: [
    "~/Library/LaunchAgents/com.windowmanager.plist",
    "~/.config/windowmanager",
  ]
end
