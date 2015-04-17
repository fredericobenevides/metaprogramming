require 'active_record'
p ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "dbfile"