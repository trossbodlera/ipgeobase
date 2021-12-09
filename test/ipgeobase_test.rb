# frozen_string_literal: true

require "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  def test_lookup
    fixture = File.read(File.expand_path("./fixtures/fixture.xml", __dir__))

    ip = "185.37.58.35"

    stub_request(:get, "http://ip-api.com/xml/#{ip}").to_return(status: 200, body: fixture)

    ip_meta = Ipgeobase.lookup(ip)

    assert(ip_meta.city == "Irkutsk")
    assert(ip_meta.country == "Russia")
    assert(ip_meta.countryCode == "RU")
    assert(ip_meta.lat * 10000 == 522978)
    assert(ip_meta.lon * 10000 == 1042964)
  end
end
