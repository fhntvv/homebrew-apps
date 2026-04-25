cask "windowmanager" do
  version "0.1.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
