# frozen_string_literal: true

RSpec.describe LunarCalendar do
  it 'has a version number' do
    expect(LunarCalendar::VERSION).not_to be nil
  end

  describe '.at_lunar' do
    let(:date) { [2020, 1, 1] }
    subject { LunarCalendar.at_lunar(*date) }

    it { should eq(LunarCalendar::Lunar.new(2019, 12, 7)) }
  end
end
