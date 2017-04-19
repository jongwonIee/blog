class Post < ApplicationRecord
  def self.contribution
    agent = Mechanize.new
    page = agent.get("https://github.com/jongwonIee")
    result = 0
    (362..0).each do |n|
      if page.search("g rect.day")[n]["data-count"] != "0"
        result += 1
      else
        break
      end
    end
    return result
  end
end