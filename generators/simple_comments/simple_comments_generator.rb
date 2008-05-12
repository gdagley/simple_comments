class SimpleCommentsGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template 'migrate/add_simple_comments.rb', 'db/migrate'
    end
  end
  
  def file_name
    "add_simple_comments"
  end
end