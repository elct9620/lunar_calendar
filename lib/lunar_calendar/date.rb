# frozen_string_literal: true

module LunarCalendar
  # The abstract date of calendar
  class Date
    include Comparable

    # @since 0.1.0
    attr_reader :year, :month, :day

    # @param year [Number] year
    # @param month [Number] month
    # @param day [Number] day
    #
    # @since 0.1.0
    def initialize(year, month, day)
      @year = year
      @month = month
      @day = day
    end

    # @return [Number] the number of days
    #
    # @since 0.1.0
    def to_i
      -1
    end

    # @return [Number] the packed solar date
    #
    # @since 0.1.0
    def binary
      @binary ||= (@year << 9) | (@month << 5) | @day
    end

    # @return [Boolean] date is same or not
    #
    # @since 0.1.0
    def ==(other)
      return false unless other.is_a?(self.class)

      @year == other.year &&
        @month == other.month &&
        @day == other.day
    end

    # @return [Number] the compare result
    #
    # @since 0.1.0
    def <=>(other)
      binary <=> other.binary
    end
  end
end
