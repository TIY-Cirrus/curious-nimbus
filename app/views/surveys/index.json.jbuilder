@surveys.each do |s|
  json.image_url s.image_url
  json.creator_answer s.creator_answer
  json.choices s.choices
end
