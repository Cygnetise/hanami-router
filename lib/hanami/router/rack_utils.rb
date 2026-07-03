# frozen_string_literal: true

module Hanami2
  class Router
    # @since 2.2.0
    # @api private
    def self.rack_3?
      defined?(Rack::Headers)
    end
  end
end
