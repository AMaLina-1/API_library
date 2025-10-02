# lib/hccg_news_sampler.rb
require "http"
require "json"
require "yaml"
require "fileutils"

BASE = "https://opendata.hccg.gov.tw"
NEWS_PATH = "/API/v3/Rest/OpenData/5A07674C217C3EC7"  # ← 純路徑，別放參數

def save_fixture(name, obj)
  dir = File.join(__dir__, "spec", "fixtures")
  FileUtils.mkdir_p(dir)
  File.write(File.join(dir, "#{name}-results.yml"), obj.to_yaml)
  puts "Saved: #{name}"
end

def fetch_news(take: 10, skip: 0)
  resp = HTTP.timeout(10)
             .accept("application/json")
             .get("#{BASE}#{NEWS_PATH}", params: { take: take, skip: skip })

  unless resp.status.success?
    warn "HTTP #{resp.status} - #{resp.to_s[0,200]}"
    raise "Request failed"
  end

  JSON.parse(resp.to_s)
end

if __FILE__ == $0
  page1 = fetch_news(take: 10, skip: 0)
  save_fixture("hccg-news-page1", page1)
end
