# frozen_string_literal: true

def http_request(name, param = nil)
  if name == 'hccg'
    response = HTTP.get("https://opendata.hccg.gov.tw/API/v3/Rest/OpenData/45A6214813A52DED?take=#{param['take']}&skip=#{param['skip']}")
  # insert other apis here
  else
    raise 'Unknown API'
  end
  raise 'Request Failed' unless response.status.to_s.to_i == 200

  response
end
