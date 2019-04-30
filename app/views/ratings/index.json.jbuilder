json.array! @ratings do |rating|
  user_id = rating.user_id

    json.user rating.user_id
    json.rating rating.user_rating

end