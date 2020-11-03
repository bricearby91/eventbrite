class UserMailer < ApplicationMailer
	default from: 'brice.arby@gmail.com'

	def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end	

	def confirmation_email(attendance)
		@attendance=attendance
		@user=@attendance.user
		mail(to: @user.email, subject: "Confirmation de votre participation à l'événement : #{@attendance.event.title}")
	end
	
end
