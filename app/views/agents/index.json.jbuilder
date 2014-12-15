json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :email, :image, :country, :city, :street, :birth
  json.url agent_url(agent, format: :json)
end
