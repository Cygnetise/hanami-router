# frozen_string_literal: true

require "hanami/router/inspector"

RSpec.describe Hanami2::Router::Inspector do
  describe "#add_route" do
    it "adds a route to the inspector" do
      inspector = described_class.new

      inspector.add_route(Hanami2::Router::Route.new(http_method: "GET", path: "/", to: "home#index"))

      expect(inspector.call).to include("home#index")
    end
  end

  describe "#call" do
    it "forwards to the formatter with the given routes" do
      routes = [
        Hanami2::Router::Route.new(http_method: "GET", path: "/", to: "home#index", as: :root, constraints: {}),
        Hanami2::Router::Route.new(http_method: "GET", path: "/about", to: "home#about", as: :about, constraints: {})
      ]
      formatter = ->(rs) { rs.map(&:path).join("+") }

      inspector = described_class.new(routes: routes, formatter: formatter)

      expect(inspector.call).to eq("/+/about")
    end

    it "forwards arguments to the formatter" do
      routes = [
        Hanami2::Router::Route.new(http_method: "GET", path: "/", to: "home#index", as: :root, constraints: {}),
        Hanami2::Router::Route.new(http_method: "GET", path: "/about", to: "home#about", as: :about, constraints: {})
      ]
      formatter = ->(rs, join_with:) { rs.map(&:path).join(join_with) }
      inspector = described_class.new(routes: routes, formatter: formatter)

      expect(inspector.call(join_with: "-")).to eq("/-/about")
    end

    it "defaults to the human friendly formatter" do
      routes = [
        Hanami2::Router::Route.new(http_method: "GET", path: "/", to: "home#index", as: :root, constraints: {})
      ]

      inspector = described_class.new(routes: routes)

      expect(inspector.call).to eq(Hanami2::Router::Formatter::HumanFriendly.new.call(routes))
    end
  end
end
