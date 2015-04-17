require 'active_record'
ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "dbfile"
                                        
#ActiveRecord::Base.connection.create_table :tasks do |t|                              
#  t.string :description
#  t.boolean :completed
#end

class Task < ActiveRecord::Base; end

task = Task.find(:first, :conditions => {:completed => true})
p task.description