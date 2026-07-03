# frozen_string_literal: true

require "hanami/middleware/error"

module Hanami2
  module Middleware
    # @since 1.3.0
    # @api private
    class BodyParser
      # Body parsing error
      # This is raised when parser fails to parse the body
      #
      # @since 1.3.0
      class BodyParsingError < Hanami2::Middleware::Error
      end

      # @since 1.3.0
      class UnknownParserError < Hanami2::Middleware::Error
        def initialize(name)
          super("Unknown body parser: `#{name.inspect}'")
        end
      end

      class InvalidParserError < Hanami2::Middleware::Error
      end
    end
  end
end
