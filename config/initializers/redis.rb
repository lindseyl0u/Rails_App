if Rails.env.production?
  $redis = Redis::Namespace.new(url: ENV["REDIS_URL"])
else 
  $redis = Redis::Namespace.new(:host => 'localhost', :port => 6379, )
end