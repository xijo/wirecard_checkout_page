require 'digest/md5'
require 'uri'
require 'wirecard_checkout_page/errors'
require 'wirecard_checkout_page/utils'
require 'wirecard_checkout_page/request_checksum'
require 'wirecard_checkout_page/response_checksum'

module WirecardCheckoutPage
  DEFAULT_INIT_URL = 'https://checkout.wirecard.com/page/init.php'

  def self.response_valid?(values)
    ResponseChecksum.new(values).valid?
  end

  def self.post_request(values)
    RequestChecksum.new(values).post_request
  end
end
