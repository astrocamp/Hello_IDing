# frozen_string_literal: true

module RestaurantsHelper
  class TimeRange
    def initialize(open_time, reserve_interval)
      @open_time = open_time
      @reserve_interval = reserve_interval.minutes.to_i
    end

    def time_slot
      @time_period = @open_time.reduce([]) { |arr, time| arr.push(time.start_time.to_i..time.end_time.to_i) }
    end

    def makelist
      time_slot
      @time_period.each_with_object([]) do |time, arr|
        time.step(@reserve_interval) { |t| arr.push(Time.at(t).utc.strftime('%R')) }
      end
    end
  end
end
