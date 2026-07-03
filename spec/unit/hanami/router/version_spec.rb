# frozen_string_literal: true

RSpec.describe "Hanami2::Router::VERSION" do
  it "exposes version" do
    expect(Hanami2::Router::VERSION).to eq("2.2.0")
  end
end
