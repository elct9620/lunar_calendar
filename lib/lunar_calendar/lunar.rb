# frozen_string_literal: true

require 'lunar_calendar/date'

module LunarCalendar
  # The Lunar Calendar Date
  class Lunar < Date
    # @param year [Number] year
    # @param month [Number] month
    # @param day [Number] day
    # @param leap [Boolean] is leap month
    #
    # @since 0.1.0
    def initialize(year, month, day, leap = false)
      super(year, month, day)
      @leap = leap
    end

    # @return [Boolean] is leap month
    #
    # @since 0.1.0
    def leap?
      @leap == true
    end
  end
end
