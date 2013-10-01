require 'user_agent'

describe "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_2 like Mac OS X; en-us)" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_2 like Mac OS X; en-us)")
  end

  it "detects an iOS device" do
    @useragent.ios?.should be_true
  end
end

describe "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us)" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us)")
  end

  it "detects an iOS device" do
    @useragent.ios?.should be_true
  end
end

describe "Mozilla/5.0 (iPod; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/4A93 Safari/419.3" do
  before do
    @useragent = UserAgent.parse("Mozilla/5.0 (iPod; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/4A93 Safari/419.3")
  end

  it "detects an iOS device" do
    @useragent.ios?.should be_true
  end
end