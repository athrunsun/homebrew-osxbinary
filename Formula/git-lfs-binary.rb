class GitLfsBinary < Formula
    desc "Git extension for versioning large files."
    homepage "https://git-lfs.github.com/"
    version "2.3.4"

    if MacOS.prefer_64_bit?
        url "https://github.com/git-lfs/git-lfs/releases/download/v#{version}/git-lfs-darwin-amd64-#{version}.tar.gz"
        sha256 "b16d4b7469b1fa34e0e27bedb1b77cc425b8d7903264854e5f18b0bc73576edb"
    else
        url "https://github.com/git-lfs/git-lfs/releases/download/v#{version}/git-lfs-darwin-386-#{version}.tar.gz"
        sha256 "57ca45c7c1734bfb51732cb058c28f6028b959c6e1675f8d4020aca019f9ca7b"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/git-lfs")
    end

    def caveats; <<~EOS
        Executable is linked as "git-lfs".
        EOS
    end
end
