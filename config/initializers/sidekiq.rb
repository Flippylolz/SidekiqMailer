require 'sidekiq'
require 'sidekiq/web'

# password for /sidekiq

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == ["admin", "password"]
end
