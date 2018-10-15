class V2rayCore < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://github.com/v2ray/v2ray-core"
    version "3.47"

    option "with-mirror", "Download from https://v2ray.com/download."

    if build.with? "mirror"
        url "https://v2ray.com/download/Core_v#{version}/v2ray-macos.zip"
    else
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-macos.zip"
    end

    sha256 "bd594f1068d7b5d9643f4c1ddec7bd129540bfc64ed9fefc90d0feec018f20c8"

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
