describe "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5)" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5)")
  end

  it { @useragent.mac_os?.should be_true }
end