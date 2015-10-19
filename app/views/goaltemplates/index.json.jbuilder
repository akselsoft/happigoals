json.array!(@goaltemplates) do |goaltemplate|
  json.extract! goaltemplate, :id, :goal, :area
  json.url goaltemplate_url(goaltemplate, format: :json)
end
