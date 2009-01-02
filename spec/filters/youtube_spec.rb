require File.dirname(__FILE__) + '/../spec_helper'

describe AutoHtml do
  include AutoHtml::Filters::Youtube

  it 'should transform URL to YouTube embed markup' do
    auto_youtube("http://www.youtube.com/watch?v=BwNrmYRiX_o").should == '<object width="390" height="250"><param name="movie" value="http://www.youtube.com/v/BwNrmYRiX_o"></param><param name="wmode" value="transparent"></param><embed src="http://www.youtube.com/v/BwNrmYRiX_o" type="application/x-shockwave-flash" wmode="transparent" width="390" height="250"></embed></object>'
  end
end