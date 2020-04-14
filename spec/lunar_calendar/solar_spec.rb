# frozen_string_literal: true

RSpec.describe LunarCalendar::Solar do
  let(:date) { LunarCalendar::Solar.new(2020, 1, 1) }

  describe '#to_lunar' do
    subject { date.to_lunar }
    it { should eq(LunarCalendar::Lunar.new(2019, 12, 7)) }
  end

  describe '#to_i' do
    subject { date.to_i }
    it { should eq(737_730) }
  end
end
