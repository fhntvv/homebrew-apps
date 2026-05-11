cask "windowmanager" do
  version "0.4.1"
  sha256 "e8fdb135f729c2deee8364323b87387050356469632362c35e93ae9141281f69"

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
