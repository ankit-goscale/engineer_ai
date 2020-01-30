json.extract! tv_show, :id, :name, :start_time, :end_time, :created_at, :updated_at
json.url tv_show_url(tv_show, format: :json)
