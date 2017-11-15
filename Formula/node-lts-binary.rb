class NodeLtsBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the LTS version and is recommended for most users."
    homepage "https://nodejs.org/"
    version "8.9.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    else
        url "https://nodejs.org/dist/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    end

    sha256 "9c38c3778f60532cec93a49330a945fcf10b252ffbf1b842b4a9b1d64a99d3cd"

    bottle :unneeded
    conflicts_with "node", "node-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
