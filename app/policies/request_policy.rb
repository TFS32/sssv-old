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
    owner_or_employee?
  end

  def get?
    owner_or_employee?
  end

  #def destroy?
  #  owner_or_employee?
  #end

  private

  def owner_or_employee?
    record.citizen == user || ['manager', 'tech'].include?(user.role)
  end
end
