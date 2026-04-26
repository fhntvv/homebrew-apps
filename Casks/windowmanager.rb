cask "windowmanager" do
  version "0.1.0"
  sha256 "28abecf5c120b1747db7a5c1204bfe891cfdd30966a34a6d3012e73be7f0d011"

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
