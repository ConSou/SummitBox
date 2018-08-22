json.data do
  json.mountian do
    json.call(
      @plan,
      :user_id,
      :mountian_id
     )
  end
end
