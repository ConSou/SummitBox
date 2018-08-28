json.data do
  json.user do
    json.call(
      @user,
      :id,
      :email,
      :authentication_token,
      :first_name,
      :last_name,
      :imgurl,
      :bio,
      :city,
      :state,
      :country
    )
  end
end
