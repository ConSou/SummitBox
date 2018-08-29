json.data do
  json.entry do
    json.call(
      @entry,
      :name,
      :city,
      :state,
      :country,
      :journal,
      :bin,
      :user
    )
  end
end
