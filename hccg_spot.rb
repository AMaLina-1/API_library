# frozen_string_literal: true

# lib/hccg_news_sampler.rb
require 'http'
require 'json'
require 'yaml'
require 'fileutils'
require_relative 'lib/http_request'

page1 = http_request('hccg', { 'take' => 10, 'skip' => 0 })
data = JSON.parse(page1.to_s)
save_fixture('hccg-spots-data', data)
