# frozen_string_literal: true

require 'json'
require 'yaml'
require 'fileutils'

def convert_json_to_yaml(json_data, yaml_path)
  parsed_data = JSON.parse(json_data)
  FileUtils.mkdir_p(File.dirname(yaml_path))
  File.write(yaml_path, parsed_data.to_yaml)
  puts "Converted #{json_data} to #{yaml_path}"
end
