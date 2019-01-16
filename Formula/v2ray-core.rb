class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "4.12.0"

    option "with-mirror", "Download from https://v2ray.com/download."

    if build.with? "mirror"
        url "https://v2ray.com/download/Core_v#{version}/v2ray-macos.zip"
    else
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-macos.zip"
    end

    sha256 "12bd93005cf5eb4eb9295ccabb43406702da3720d0ebe7c90ca03856dfecaa1e"

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
        "geoip.dat" and "geosite.dat" are also installed as symlinks.
        EOS
    end
end
