Homebrew-avr
============
This repository contains the GNU AVR toolchain as formulae for [Homebrew](https://github.com/mxcl/homebrew).

AVR is a popular family of microcontrollers, used for example in the [Arduino](http://arduino.cc) project.

Current Versions
----------------
- gcc 4.9.1 (20.3 min)
- avr-libc 1.8.1 (3.0 min)
- binutils 2.24 (2.6 min)

Dependencies: 'gmp', 'libmpc', 'mpfr', will be installed with gcc.
In parentheses: Build times on a Mac Book Air with i7 1.8GHz CPU.

Installing Homebrew-avr Formulae
--------------------------------
Just `brew tap 0xPIT/avr` and then `brew install <formula>`.

To install the entire AVR toolchain, run:
`brew install avr-libc`

This will pull in the prerequisites avr-binutils and avr-gcc.

You can also install via URL:

```
brew install https://raw.github.com/0xPIT/homebrew-avr/master/<formula>.rb
```

Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
[homebrew-dupes]:https://github.com/Homebrew/homebrew-dupes
[homebrew-versions]:https://github.com/Homebrew/homebrew-versions
