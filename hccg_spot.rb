# frozen_string_literal: true

# lib/hccg_news_sampler.rb
require 'http'
require 'json'
require 'yaml'
require 'fileutils'
require_relative 'lib/http_request'
require_relative 'json_to_yaml'

page1 = http_request('hccg', { 'take' => 10, 'skip' => 0 })
yaml_path = File.join(__dir__, 'spec', 'fixtures', 'hccg-spots-data-results.yml')
convert_json_to_yaml(page1.to_s, yaml_path)
