json.array!(@works) do |work|
  json.extract! work, :id, :name, :description, :url, :image_url
  json.url work_url(work, format: :json)
end
