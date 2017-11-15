class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the current version with latest features."
    homepage "https://nodejs.org/"
    version "9.0.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    else
        url "https://nodejs.org/dist/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    end

    sha256 "170d30261e49adbbf4e77a90e16b8c7283a5ad79dc4e878f801b3f748ced56fa"

    bottle :unneeded
    conflicts_with "node", "node-lts-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
