require 'formula'

class SimAvr < Formula
  homepage 'hhttp://gitorious.org/simavr/pages/Home'
  head 'http://gitorious.org/simavr/simavr/archive-tarball/master'

  depends_on '0xPIT/avr/avr-gcc'
  depends_on '0xPIT/avr/avr-libc'
  depends_on 'libelf'

  def install
    system 'make all'
  end
end

 
