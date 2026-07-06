# frozen_string_literal: true

module Hanami2
  class Router
    # @api private
    # @since 2.0.0
    ROUTER_PARSED_BODY = "router.parsed_body"

    # Backported from hanami-router 3.0.0 (multipart-safe body parsing)
    CONTENT_TYPE = "CONTENT_TYPE"
    FORM_URLENCODED_MEDIA_TYPE = "application/x-www-form-urlencoded"
    FORM_URLENCODED_MEDIA_TYPE_PREFIX = "#{FORM_URLENCODED_MEDIA_TYPE};".freeze
  end
end
