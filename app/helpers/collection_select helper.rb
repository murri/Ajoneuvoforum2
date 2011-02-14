collection_select(:user, :role_id, @roles, :id, :role_title, {:prompt => true})

