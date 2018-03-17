class V2ray < Formula
    desc "A platform for building proxies to bypass network restrictions."
    homepage "https://www.v2ray.com"
    version "3.13"

    option "with-mirror", "Download installation archive from https://www.v2ray.com/download, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "mirror"
        url "https://www.v2ray.com/ipns/QmdtMuAhEUPFX9NQiGhRj2zhS1oEA76SXNDnZRHqivjMwR/Core-v#{version}/v2ray-macos.zip"
    else
        url "https://github.com/v2ray/v2ray-core/releases/download/v#{version}/v2ray-macos.zip"
    end

    sha256 "9dd60c7cef08f542d811fab3e7bb21ab3bf2cdd8e03bb375a6d7cbdea8653f51"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/v2ray")
        bin.install_symlink("#{libexec}/v2ctl")
    end
end
