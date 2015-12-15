json.array!(@reports) do |report|
  json.extract! report, :id, :type, :title, :date, :description, :status, :image, :review, :findings, :animal
  json.url report_url(report, format: :json)
end
