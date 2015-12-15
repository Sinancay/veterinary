json.array!(@barns) do |barn|
  json.extract! barn, :id, :barn_cleandate, :user_id, :equipment_issing, :descrption
  json.url barn_url(barn, format: :json)
end
