class V2rayCoreArm64 < Formula
    desc "A platform for building proxies to bypass network restrictions. (ARM64)"
    homepage "https://github.com/v2fly/v2ray-core"
    version "4.44.0"

    url "https://github.com/v2fly/v2ray-core/releases/download/v#{version}/v2ray-macos-arm64-v8a.zip"
    sha256 "69b5ea46cbd5cc297bb55583d2163f0eaf0aa83164fa511b81ffc6116aea75fd"

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
