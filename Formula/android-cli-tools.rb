class AndroidCliTools < Formula
    desc "Android command line tools (when you don't need Android Studio)."
    homepage "https://developer.android.com/studio/"
    version "4333796"
    
    url "https://dl.google.com/android/repository/sdk-tools-darwin-#{version}.zip"
    sha256 "ecb29358bc0f13d7c2fa0f9290135a5b608e38434aad9bf7067d0252c160853e"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/android" => "android")
        bin.install_symlink("#{libexec}/emulator" => "emulator")
        bin.install_symlink("#{libexec}/emulator-check" => "emulator-check")
        bin.install_symlink("#{libexec}/mksdcard" => "mksdcard")
        bin.install_symlink("#{libexec}/monitor" => "monitor")
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
