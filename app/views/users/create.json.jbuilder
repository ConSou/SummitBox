json.data do
  json.user do
    json.call(
      @user,
      :id,
      :email,
      :authentication_token,
      :confirmation_token,
      :confirmed_at,
      :first_name,
      :last_name
    )
  end
end
