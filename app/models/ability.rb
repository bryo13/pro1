class Ability
  include CanCan::Ability

  def initialize(user)
    if user.lecture?
      can :manage, :all
    elsif user.student? 
      can :read, Task
    end
  end
end