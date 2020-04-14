# frozen_string_literal: true

RSpec.describe LunarCalendar::Lunar do
  describe '#leap?' do
    let(:leap) { false }
    let(:date) { LunarCalendar::Lunar.new(2020, 1, 1, leap) }
    subject { date.leap? }

    it { should be_falsy }

    context 'is leap month' do
      let(:leap) { true }

      it { should be_truthy }
    end
  end
end
