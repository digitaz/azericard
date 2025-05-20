# frozen_string_literal: true

module Azericard
  module Configuration
    VALID_OPTIONS_KEYS = %i[
      endpoint terminal secret_key user_agent debug
      merchant_name merchant_url merchant_email country_code gmt_offset
      rsa private_key_pem private_key
    ].freeze
    DEFAULT_USER_AGENT = "Azericard Ruby Gem #{Azericard::VERSION}"

    attr_accessor(*VALID_OPTIONS_KEYS)

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def reset
      VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", nil)
      end
      self.user_agent = DEFAULT_USER_AGENT
      self.rsa = false
    end
  end
end
