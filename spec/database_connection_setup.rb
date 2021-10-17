require './lib/database_connection' 

if ENV['ENVIRONMENT'] == 'test'
  Database.setup('chitter_manager_test')
else 
  Database.setup('chitter_manager')
end