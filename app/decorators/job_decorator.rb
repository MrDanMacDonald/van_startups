class JobDecorator < Draper::Decorator
  include ActionView::Helpers

  def job_title
    return unless object.title
    object.title + ' at ' + object.company_name
  end

  def job_role_type
    return unless object.role_type
    object.role_type.capitalize
  end

  def job_skill_type
    return unless object.skill_type
    object.skill_type.capitalize
  end

  def job_salary
    return unless object.salary[0] && object.salary[1]
    number_to_currency(object.salary[0], precision: 0) + ' - ' + number_to_currency(object.salary[1], precision: 0)
  end

  def job_equity
    return unless object.equity[0] && object.equity[1]
    number_to_percentage(object.equity[0], precision: 2) + ' - ' + number_to_percentage(object.equity[1], precision: 2)
  end
end