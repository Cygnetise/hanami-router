# frozen_string_literal: true

module Hanami2
  # Hanami Rack middleware
  #
  # @since 1.3.0
  module Middleware
    unless defined?(::Hanami2::Middleware::Error)
      # Base error for Rack middleware
      #
      # @since 2.0.0
      class Error < ::StandardError
      end
    end
  end
end
