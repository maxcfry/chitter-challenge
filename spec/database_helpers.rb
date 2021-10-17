require 'pg'

def persisted_data(id:)
  connection = PG.connect(dbname: 'chitter_manager_test')
  connection.query(
    "SELECT * FROM wall WHERE id = $1;", [id]
  )
end