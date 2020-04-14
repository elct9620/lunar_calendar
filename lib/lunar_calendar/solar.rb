# frozen_string_literal: true

require 'lunar_calendar/date'
require 'lunar_calendar/calculator/lunar'

module LunarCalendar
  # The Solar Calendar Date
  class Solar < Date
    # @return [LunarCalendar::Lunar] the lunar date
    #
    # @since 0.1.0
    def to_lunar
      LunarCalendar::Calculator::Lunar.new(self).perform
    end

    # @return [Number] solar days
    #
    # @since 0.1.0
    # rubocop:disable Metrics/AbcSize
    def to_i
      m = (@month + 9) % 12
      y = @year - (m / 10)

      (365 * y) + #  One year have 365 days
        (y / 4) - # Add leap days
        (y / 100) +
        (y / 400) +
        ((m * 306 + 5) / 10) + # Unknown
        (@day - 1)
    end
    # rubocop:enable Metrics/AbcSize
  end
end
