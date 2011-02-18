class Ability
  include CanCan::Ability

  def initialize(user)
    if(user)
      can :index, Bookmark
      can :new, Bookmark
      can :create, Bookmark
      can :edit, Bookmark do |bookmark|
        bookmark && bookmark.user == user
      end
      can :read, Bookmark do |bookmark|
        bookmark && bookmark.user == user
      end
      can :update, Bookmark do |bookmark|
        bookmark && bookmark.user == user
      end
      can :delete, Bookmark do |bookmark|
        bookmark && bookmark.user == user
      end
    end
  end
end
