cask "windowmanager" do
  version "0.4.0"
  sha256 "69fe06c2c7754dd781f5fa603835d34bfc7f21ffd4c8f066034ac2d34f2b55ad"

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
