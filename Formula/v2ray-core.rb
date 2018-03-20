class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core https://www.v2ray.com"
    version "3.14"

    option "with-mirror", "Download installation archive from https://www.v2ray.com/download, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "mirror"
        url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-macos.zip"
    else
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-macos.zip"
    end

    sha256 "8ac788cab01289ebf964c724d35eeb9c458a370e204956cf1a2ca3f5c433e961"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
        bin.install_symlink("#{libexec}/geoip.dat")
        bin.install_symlink("#{libexec}/geosite.dat")
    end

    def caveats; <<~EOS
        Executable linked as "v2ray" and "v2ctl".
        EOS
    end
end
