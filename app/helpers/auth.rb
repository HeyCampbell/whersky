def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def current_author
  if current_user
    if current_user.author == true || current_user.admin == true
      return current_user
    else
      return nil
    end
  end
end

def current_admin
  if current_user
    if current_user.admin == true
      return current_user
    else
      return nil
    end
  end
end
