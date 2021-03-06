class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    else
      can :manage, Game, :user_id => user.id
      can :manage, Frame, game: { :user_id => user.id }
    end
  end
end
