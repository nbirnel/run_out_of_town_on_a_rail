json.array!(@outlaws) do |outlaw|
  json.extract! outlaw, :id, :name, :nick, :wanted_for, :back_story, :facial_hair, :how_punished, :hat
  json.url outlaw_url(outlaw, format: :json)
end
