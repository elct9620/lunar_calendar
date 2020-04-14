# frozen_string_literal: true

require 'lunar_calendar/data/new_years'

module LunarCalendar
  # The calculate utils
  module Utils
    # Extract packed informactio
    #
    # @param data [Number] packed data
    # @param length [Number] total bit to read
    # @param shift [Number] the shift position
    #
    # @return [Number] value
    #
    # @since 0.1.0
    def self.decode(data, length, shift)
      (data & (((1 << length) - 1) << shift)) >> shift
    end

    # Extract lunar new year in solar date
    #
    # @param offset [Number] the offset of table
    #
    # @return [LunarCalendar::Solar] the solar date
    #
    # @since 0.1.0
    def self.new_year_at(offset)
      solar = LunarCalendar::Data::NEW_YEARS[offset]
      year = decode(solar, 12, 9)
      month = decode(solar, 4, 5)
      day = decode(solar, 5, 0)

      Solar.new(year, month, day)
    end
  end
end
