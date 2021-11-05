class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all 
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    owner_or_tech?
  end

  def get?
    owner_or_tech?
  end

  def destroy?
    owner_or_tech?
  end

  private

  def owner_or_tech?
    record.citizen == user || user.user_type == "tech"
  end
end
