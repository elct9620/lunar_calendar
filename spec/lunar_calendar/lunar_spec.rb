# frozen_string_literal: true

RSpec.describe LunarCalendar::Lunar do
  let(:date) { LunarCalendar::Lunar.new(2020, 1, 1) }

  describe '#heavenly' do
    subject { date.heavenly }
    it { should eq('庚') }
  end

  describe '#earthly' do
    subject { date.earthly }
    it { should eq('子') }
  end

  describe '#chinese_era' do
    subject { date.chinese_era }
    it { should eq('庚子') }
  end
end
