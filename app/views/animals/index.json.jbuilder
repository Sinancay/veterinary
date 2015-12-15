json.array!(@animals) do |animal|
  json.extract! animal, :id, :role, :user_id, :age, :gender, :image, :using_drugs
  json.url animal_url(animal, format: :json)
end
