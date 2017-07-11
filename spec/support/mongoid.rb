ENV['MONGOID_ENV'] = 'test'
if Mongoid::VERSION >= '5.0'
  Mongoid.load!('spec/support/mongoid.yml')
else
  Mongoid.load!('spec/support/mongoid-old.yml')
end
