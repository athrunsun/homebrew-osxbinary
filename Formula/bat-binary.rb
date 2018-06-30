class BatBinary < Formula
    desc "Go implement CLI, cURL-like tool for humans"
    homepage "https://github.com/astaxie/bat"
    version "0.0.1"

    url "https://github.com/astaxie/bat/releases/download/v#{version}/bat_#{version}_darwin_amd64.zip"
    sha256 "b6ac77b2992a08b108d0d37f58504276d0d8190416a6523adec7665c921061c6"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bat" => "bat")
    end

    def caveats; <<~EOS
        Executable is linked as "bat".
        EOS
    end
end
