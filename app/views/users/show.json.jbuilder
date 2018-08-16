json.data do
  json.user do
    json.call(
      @user,
      :id,
      :email,
      :authentication_token,
      :first_name,
      :last_name
    )
  end
end
