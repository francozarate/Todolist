json.array!(@tasklists) do |tasklist|
  json.extract! tasklist, :id, :name, :category, :is_completed, :date_todo
  json.url tasklist_url(tasklist, format: :json)
end
