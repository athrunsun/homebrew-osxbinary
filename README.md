# Homebrew OSX Binaries
**Please submit PR in [monorepo](https://github.com/athrunsun/homebrew_monorepo).**

These formulae provide binary installs for software that,
* Is not available in other package managers.
* Has a lot of dependencies thus is time-consuming when installing. E.g. [mpv](https://github.com/Homebrew/homebrew-core/blob/master/Formula/mpv.rb).

## NOTE
* Don't mess this up with homebrew's official [homebrew-binary](https://github.com/Homebrew/homebrew-binary).
* This tap is for **no-compiling fans** like me. I really hate to install a bunch of dependencies just to compile one formula. Binaries are way **cleaner** for me.

## How do I install these formulae?
`brew install athrunsun/osxbinary/<formula>`

Or `brew tap athrunsun/osxbinary` and then `brew install <formula>`.

Or install via URL (which will not receive updates):

```
brew install https://raw.githubusercontent.com/athrunsun/homebrew-osxbinary/master/Formula/<formula>.rb
```

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/tree/master/docs#readme).
