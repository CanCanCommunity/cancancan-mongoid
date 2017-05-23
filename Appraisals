appraise "mongoid_2.x" do
  gem "activesupport", "~> 3.0", :require => "active_support/all"
  gem "actionpack", "~> 3.0", :require => "action_pack"
  gem "mongoid", "~> 2.0.0"

  gemfile.platforms :ruby, :mswin, :mingw do
    gem "bson_ext", "~> 1.1"
  end

  gemfile.platforms :jruby do
    gem "mongo", "~> 1.9.2"
  end
end

appraise "mongoid_6.x" do
  gem "mongoid", "~> 6.1.0"

  gemfile.platforms :ruby, :mswin, :mingw do
    gem "bson_ext", "~> 1.1"
  end

  gemfile.platforms :jruby do
    gem "mongo", "~> 1.9.2"
  end
end
