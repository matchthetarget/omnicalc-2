class CalculationsController < ApplicationController
  def addition_form
    render({ :template => "calculation_templates/addition_form" })
  end

  def subtraction_form
    render({ :template => "calculation_templates/subtraction_form" })
  end

  def multiplication_form
    render({ :template => "calculation_templates/multiplication_form" })
  end

  def division_form
    render({ :template => "calculation_templates/division_form" })
  end

  def add
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result = @first_number.to_f + @second_number.to_f


    render({ :template => "calculation_templates/add_results" })
  end

  def subtract
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @second_number.to_f - @first_number.to_f

    render({ :template => "calculation_templates/subtract_results" })
  end

  def multiply
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number.to_f * @second_number.to_f

    render({ :template => "calculation_templates/multiply_results" })
  end

  def divide
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number.to_f / @second_number.to_f

    render({ :template => "calculation_templates/divide_results" })
  end
end
