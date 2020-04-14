# frozen_string_literal: true

require 'lunar_calendar/version'
require 'lunar_calendar/solar'
require 'lunar_calendar/lunar'

# The Lunar Calendar Calculator
module LunarCalendar
  # @since 0.1.0
  SUPPORT_YEARS = (1888..2100).freeze

  # Convert Solar to Lunar
  #
  # @param year [Number] year
  # @param month [Number] month
  # @param day [Number] day
  #
  # @return [LunarCalendar::Solar] the lunar date
  #
  # @since 0.1.0
  def self.at_lunar(year, month, day)
    Solar.new(year, month, day).to_lunar
  end
end
