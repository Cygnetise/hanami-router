# frozen_string_literal: true

RSpec.describe Hanami2::Router do
  describe ".define" do
    it "returns block as it is" do
      routes = -> { get "/", to: ->(*) { [200, {}, ["OK"]] } }
      expect(Hanami2::Router.define(&routes)).to eq(routes)
    end
  end
end
