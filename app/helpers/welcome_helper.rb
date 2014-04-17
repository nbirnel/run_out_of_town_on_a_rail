module WelcomeHelper
  def salutation
    if params[:hates_outlaws] == "yes"
      "You,
      Sir,
      with your high on your horse,
      too good for anybody,
      outlaw-hatin' ways,
      can be gone. 
      And the horse you rode in on too!"
    else
      "I knows you like you some outlaws."
    end
  end
end
