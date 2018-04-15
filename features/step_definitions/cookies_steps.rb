When(/^user visits (.*)$/) do |protocol|
  url = "#{protocol}://#{ENV['target']}"
  @page = request_page(url, 'get', nil)
end

Then(/^cookies should be flagged with (.*)$/) do |flag|
  @page.header['set-cookie'].match(flag).class.should == MatchData
end

Then(/^a page should be shown$/) do
  puts @page.header
  # puts response_body
  # pending # express the regexp above with the code you wish you had
end
