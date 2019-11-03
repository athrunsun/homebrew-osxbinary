class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "4.21.3"

    url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-macos.zip"
    sha256 "924c4348812b6a270344dabff17eaf10e2062ce5dd9b2eee095fe1f0491a29e0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
        chmod(0755, "#{libexec}/v2ray")
        chmod(0755, "#{libexec}/v2ctl")
        bin.install_symlink("#{libexec}/geoip.dat")
        bin.install_symlink("#{libexec}/geosite.dat")
    end

    def caveats; <<~EOS
        Executable linked as "v2ray" and "v2ctl".
        "geoip.dat" and "geosite.dat" are also installed as symlinks.
        EOS
    end
end
