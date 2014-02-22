json.array!(@white_elephants) do |white_elephant|
  json.extract! white_elephant, :id, :name, :string, :countries_visited, :integer, :country, :string
  json.url white_elephant_url(white_elephant, format: :json)
end
