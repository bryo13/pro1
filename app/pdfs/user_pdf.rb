class UserPdf < Prawn::Document
  def initialize(user)
    super(top_margin: 70)
    @user = user
    @user.name
    text "Name #{@user.name}"
      end


end