# frozen_string_literal: true

require 'http'
require 'yaml'
require_relative 'http_request'

config = YAML.safe_load_file('../config/secrets.yml')

response = http_request('google_places', {'token' => config['GOOGLE_PLACE_TOKEN']})
project = response.parse


File.write('../spec/fixtures/google_places_results.yml', project.to_yaml)

