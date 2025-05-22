json.extract! do_app, :id, :title, :description, :status, :created_at, :updated_at
json.url do_app_url(do_app, format: :json)
