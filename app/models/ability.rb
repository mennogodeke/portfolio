class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.admin_role?
      can :manage, :all
    end
    if user.user_role?
      can :create, Comment
      can :read, Comment
      can :read, Article
      can :read, Skill
      can :read, Activety
    end

  end
end
