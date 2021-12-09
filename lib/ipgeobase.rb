# frozen_string_literal: true

require 'addressable/uri'
require 'net/http'

require_relative 'ipgeobase/version'
require_relative 'ipgeobase/xmlparser'

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    response = Net::HTTP.get(uri)
    XMLParser.parse(response)
  end
end

