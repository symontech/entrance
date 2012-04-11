When /^user visits (.*)$/ do |url|
  @page = request_page(url, 'get', nil) #visit url
end

Then /^cookies should be flagged with (.*)$/ do |flag|
  puts @page.header
  @page.header.each do |key, value|
    if key.downcase == "set-cookie"
      value.include?(flag).should == true
    end
  end
end

Then /^a page should be shown$/ do
  puts @page.header
  #puts response_body
  #pending # express the regexp above with the code you wish you had
end
