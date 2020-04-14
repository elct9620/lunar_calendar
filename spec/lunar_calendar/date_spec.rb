# frozen_string_literal: true

RSpec.describe LunarCalendar::Date do
  let(:date) { LunarCalendar::Date.new(2020, 1, 1) }

  describe '#to_i' do
    subject { date.to_i }
    it { should eq(-1) }
  end

  describe '#binary' do
    subject { date.binary }
    it { should eq((2020 << 9) | (1 << 5) | 1) }
  end

  describe '#==' do
    subject { date == other }
    let(:other) { LunarCalendar::Date.new(2020, 1, 1) }
    it { should be_truthy }

    context 'not same date' do
      let(:other) { LunarCalendar::Date.new(2020, 1, 2) }
      it { should be_falsy }
    end
  end

  describe '#<=>' do
    subject { date <=> other }
    let(:other) { LunarCalendar::Date.new(2020, 1, 1) }
    it { should eq(0) }

    context 'other is bigger' do
      let(:other) { LunarCalendar::Date.new(2020, 1, 2) }
      it { should eq(-1) }
    end

    context 'other is smaller' do
      let(:other) { LunarCalendar::Date.new(2019, 12, 30) }
      it { should eq(1) }
    end
  end
end
