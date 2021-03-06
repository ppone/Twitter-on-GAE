=begin
= $RCSfile: digest.rb,v $ -- Ruby-space predefined Digest subclasses

= Info
  'OpenSSL for Ruby 2' project
  Copyright (C) 2002  Michal Rokos <m.rokos@sh.cvut.cz>
  All rights reserved.

= Licence
  This program is licenced under the same licence as Ruby.
  (See the file 'LICENCE'.)

= Version
  $Id: digest.rb,v 1.1.2.2 2006/06/20 11:18:15 gotoyuzo Exp $
=end

require 'openssl'

module OpenSSL
  module Digest

    alg = %w(DSS DSS1 MD2 MD4 MD5 MDC2 RIPEMD160 SHA SHA1)
    if OPENSSL_VERSION_NUMBER > 0x00908000
      alg += %w(SHA224 SHA256 SHA384 SHA512)
    end
    alg.each{|name|
      klass = Class.new(Digest){
        define_method(:initialize){|*data|
          if data.length > 1
            raise ArgumentError,
              "wrong number of arguments (#{data.length} for 1)"
          end
          super(name, data.first)
        }
      }
      singleton = (class <<klass; self; end)
      singleton.class_eval{
        define_method(:digest){|data| Digest.digest(name, data) }
        define_method(:hexdigest){|data| Digest.hexdigest(name, data) }
      }
      const_set(name, klass)
    }

  end # Digest
end # OpenSSL

