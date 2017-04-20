class Post < ApplicationRecord
  def contribution(n)
    agent = Mechanize.new
    page = agent.get("https://github.com/jongwonIee")
    return page.search("g rect.day")[n]["data-count"]
  end

  def self.contribution_sum
    agent = Mechanize.new
    page = agent.get("https://github.com/jongwonIee")
    result = 0
    371.downto(0) do |n|
      if page.search("g rect.day")[n].nil?
      elsif page.search("g rect.day")[n]["data-count"] != "0"
        result += 1
      else
        break
      end
    end
    return result
  end
end