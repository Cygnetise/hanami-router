# frozen_string_literal: true

RSpec.describe Hanami2::Middleware::BodyParser do
  it "inherits from Hanami2::Routing::Error" do
    expect(Hanami2::Middleware::BodyParser::BodyParsingError.superclass).to eq(Hanami2::Middleware::Error)
    expect(Hanami2::Middleware::BodyParser::UnknownParserError.superclass).to eq(Hanami2::Middleware::Error)
    expect(Hanami2::Middleware::BodyParser::InvalidParserError.superclass).to eq(Hanami2::Middleware::Error)
  end
end
