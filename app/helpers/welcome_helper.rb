module WelcomeHelper
  def salutation
    if @likes_outlaws
      "I knows you like you some outlaws."
    else
      "You,
      Sir,
      with your high on your horse,
      too good for anybody,
      outlaw-hatin' ways,
      can be gone. 
      And the horse you rode in on too!"
    end
  end
end
