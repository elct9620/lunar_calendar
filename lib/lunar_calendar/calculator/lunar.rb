# frozen_string_literal: true

require 'lunar_calendar/data/new_years'
require 'lunar_calendar/utils'
require 'lunar_calendar/lunar_year'

module LunarCalendar
  module Calculator
    # The Lunar Date Calculator
    class Lunar
      # @param date [LunarCalendar::Solar] the solar date
      #
      # @since 0.1.0
      def initialize(solar)
        @solar = solar
        @lunar_year = LunarYear.new(position)
        @year = position + LunarCalendar::SUPPORT_YEARS.begin
        @month = 1
        @day = 1
      end

      # @return [LunarCalendar::Lunar] the lunar date
      #
      # @since 0.1.0
      def perform
        move_days

        @month -= 1 if leap?

        LunarCalendar::Lunar.new(@year, @month, @day, leap_month?)
      end

      # @return [Number] position of table
      #
      # @since 0.1.0
      def position
        return @position unless @position.nil?

        index = @solar.year - LunarCalendar::SUPPORT_YEARS.begin
        # If new years in the previous year
        index -= 1 if LunarCalendar::Data::NEW_YEARS[index] > @solar.binary
        @position = index
      end

      private

      def leap_month?
        return false if @month != @lunar_year.leap_month + 1

        true
      end

      def leap?
        return false if @lunar_year.leap_month.zero?
        return false if @lunar_year.leap_month >= @month

        true
      end

      def move_days
        @day = offset + 1
        @lunar_year.month_days.each do |days_in_month|
          break if days_in_month >= @day

          @month += 1
          @day -= days_in_month
        end
      end

      def offset
        @offset ||=
          @solar.to_i - LunarCalendar::Utils.new_year_at(position).to_i
      end
    end
  end
end
