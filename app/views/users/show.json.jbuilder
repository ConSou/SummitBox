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
    json.bins @user.bins do |bin|
      json.call(
        bin,
        :id,
        :name,
        :mountian_id
      )
    end
  end
end
