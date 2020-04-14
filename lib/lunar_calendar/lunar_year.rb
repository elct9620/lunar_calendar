# frozen_string_literal: true

require 'lunar_calendar/data/leap_months'
require 'lunar_calendar/utils'

module LunarCalendar
  # The leap and months of specify year
  #
  # @param offset [Number] the offset of table
  class LunarYear
    def initialize(offset)
      @offset = offset
    end

    # @return [Number] the packed leap data
    def binary
      @binary ||= LunarCalendar::Data::LEAP_MONTHS[@offset]
    end

    # @return [Array<Number>] month days
    def month_days
      (0..12).map do |month|
        LunarCalendar::Utils.decode(binary, 1, 12 - month) == 1 ? 30 : 29
      end
    end

    # @return [Number] the leap month
    def leap_month
      @leap_month ||= LunarCalendar::Utils.decode(binary, 4, 13)
    end
  end
end
