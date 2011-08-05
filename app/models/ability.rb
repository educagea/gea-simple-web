class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :super_admin
      can :manage, :all
    elsif user.role? :admin
      can :manage, :all
    elsif user.role? :teacher
      can :manage, :all
    elsif user.role? :pupil
      can :read, :all
    end
  end
end