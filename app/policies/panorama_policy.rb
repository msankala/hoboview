class PanoramaPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

  def owned?
    record.user == user
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    !user.name.blank?
  end

  def create?
    new?
  end

  def edit?
    owned?
  end

  def update?
    edit?
  end

  def destroy?
    owned?
  end
end
