# frozen_string_literal: true

RSpec.describe LunarCalendar::LunarYear do
  let(:offset) { 0 }
  let(:year) { LunarCalendar::LunarYear.new(offset) }

  describe '#binary' do
    subject { year.binary }
    it { should eq(LunarCalendar::Data::LEAP_MONTHS[offset]) }
  end

  describe '#month_days' do
    subject { year.month_days }
    it { should match([30, 29, 30, 30, 29, 30, 29, 29, 30, 29, 30, 29, 29]) }
  end

  describe '#leap_month' do
    subject { year.leap_month }
    it { should eq(0) }

    context 'has leap month' do
      let(:offset) { 129 } # 2017
      it { should eq(6) }
    end
  end
end
