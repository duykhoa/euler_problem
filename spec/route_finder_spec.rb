require_relative './spec_helper'

describe Al::RouteFinder do
  describe "discover" do
    let(:start_point) { Al::Point.new(0, 0) }
    let(:end_point) { Al::Point.new(1, 1) }
    let(:route_finder) { Al::RouteFinder.new(start_point, end_point) }

    it "get all adjacents" do
      result = route_finder.discover(start_point)
    end
  end
end
