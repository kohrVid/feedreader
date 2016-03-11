require 'rails_helper'

RSpec.describe Feed, type: :model do
	it "can have many entries" do
		entry1 = FactoryGirl.build(:entry)
		entry2 = FactoryGirl.build(:entry, url: "https://twitter.com", feed_id: 2, published: "2016-03-09 13:00:18")
		new_feed = Feed.new(FactoryGirl.attributes_for(:feed), entries: [entry1, entry2])
		expect(new_feed).to be_valid
	end
end
