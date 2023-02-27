# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. 
      if user.manager? || user.admin?
        can :manage, :all
      elsif user.rooms?
        can :read, RoomService 
        can [:read, :update],  UserProfile
        can :destroy, User
      elsif user.cook? 
        can [:read, :update], SpecialMealBooking
        can [:read, :update], UserProfile
        can :manage, Meal
        can [:read], UserMealBooking
        can :destroy, User
        # can :read, UserRoomBooking
        # can :read, Room
      elsif user.security?
        can :read, UserRoomBooking
        # include reading of car booking details by the security officer
        # can :read, CarBooking
        can :read, Car
        can :read, RoomType
        can :read, Room
        can :read, User
      else
        # can [:read, create], Car
        # can [:read, create], CarBooking
        can :read, RoomType
        can :read, Meal
        can :read, Room
        can [:read, :update],  UserProfile
        can :manage, UserMealBooking
        can :destroy, User  
      end

      #  return unless user.manager?
      #  can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
