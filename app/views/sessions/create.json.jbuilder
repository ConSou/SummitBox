json.data do
  json.user do
    json.call(
      @user,
      :email,
      :authentication_token,
      :id,
      :first_name,
      :last_name,
      :city,
      :state,
      :country,
      :bio
     )
  end
end
