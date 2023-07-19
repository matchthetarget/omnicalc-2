require "rails_helper"

describe "/add" do
  it "has a functional URL", points: 1 do
    visit "/add"

    expect(page.status_code).to be(200)
  end
end

describe "/add" do
  it "has an `<h1>` with the text 'Addition'", points: 1 do
    visit "/add"

    heading = find("h1", :text => /Addition/i)
    expect(heading).to_not be_nil,
      "Expected to find an <h1> with the text 'Addition', but didn't find one."
  end
end

describe "/add" do
  it "has a `<form>` element", points: 1 do
    visit "/add"

    expect(page).to have_css("form", count: 1),
      "Expected to find one form element on the page but found 0 or more than 1."
  end
end

describe "/add" do
  it "has a label with the text 'Add this:'", points: 1, hint: h("copy_must_match") do
    visit "/add"

    expect(page).to have_css("label", text: /Add this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/add" do
  it "has a label with the text 'to this:'", points: 1, hint: h("copy_must_match") do
    visit "/add"

    expect(page).to have_css("label", text: /to this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/add" do
  it "has two `<input>` elements", points: 1 do
    visit "/add"

    expect(page).to have_css("input", count: 2)
  end
end

describe "/add" do
  it "has a button element with text 'Add!'", points: 1, hint: h("copy_must_match") do
    visit "/add"

    expect(page).to have_css("button", text: /Add/i)
  end
end

describe "/add" do
  it "has a `<form>` element with an 'action' attribute", points: 1 do
    visit "/add"

    expect(page).to have_css("form[action]"),
      "Expected page to have a form element with an 'action' attribute but didn't find one."
  end
end

describe "/add" do
  it "has a label with the text 'Add this:' that has a matching input", points: 1, hint: h("label_for_input") do
    visit "/add"
    name_label = find("label", :text => /Add this/i)
    for_attribute = name_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")

      all_input_ids = all_inputs.map { |input| input[:id] }

      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found #{all_input_ids.count(for_attribute)}."
    end
  end
end

# subtract
describe "/subtract" do
  it "has a functional URL", points: 1 do
    visit "/subtract"

    expect(page.status_code).to be(200)
  end
end

describe "/subtract" do
  it "has an `<h1>` with the text 'Subtraction'", points: 1 do
    visit "/subtract"

    heading = find("h1", :text => /Subtraction/i)
    expect(heading).to_not be_nil,
      "Expected to find an <h1> with the text 'Subtraction', but didn't find one."
  end
end

describe "/subtract" do
  it "has a `<form>` element", points: 1 do
    visit "/subtract"

    expect(page).to have_css("form", count: 1),
      "Expected to find one form element on the page but found 0 or more than 1."
  end
end

describe "/subtract" do
  it "has a label with the text 'Subtract this:'", points: 1, hint: h("copy_must_match") do
    visit "/subtract"

    expect(page).to have_css("label", text: /Subtract this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/subtract" do
  it "has a label with the text 'from this:'", points: 1, hint: h("copy_must_match") do
    visit "/subtract"

    expect(page).to have_css("label", text: /from this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/subtract" do
  it "has two `<input>` elements", points: 1 do
    visit "/subtract"

    expect(page).to have_css("input", count: 2)
  end
end

describe "/subtract" do
  it "has a button element with text 'Subtract!'", points: 1, hint: h("copy_must_match") do
    visit "/subtract"

    expect(page).to have_css("button", text: /Subtract/i)
  end
end

describe "/subtract" do
  it "has a `<form>` element with an 'action' attribute", points: 1 do
    visit "/subtract"

    expect(page).to have_css("form[action]"),
      "Expected page to have a form element with an 'action' attribute but didn't find one."
  end
end

describe "/subtract" do
  it "has a label with the text 'Subtract this:' that has a matching input", points: 1, hint: h("label_for_input") do
    visit "/subtract"
    name_label = find("label", :text => /Subtract this/i)
    for_attribute = name_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")

      all_input_ids = all_inputs.map { |input| input[:id] }

      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found #{all_input_ids.count(for_attribute)}."
    end
  end
end

#  end subtract
#  start multi

describe "/multiply" do
  it "has a functional URL", points: 1 do
    visit "/multiply"

    expect(page.status_code).to be(200)
  end
end

describe "/multiply" do
  it "has an `<h1>` with the text 'Multiplication'", points: 1 do
    visit "/multiply"

    heading = find("h1", :text => /Multiplication/i)
    expect(heading).to_not be_nil,
      "Expected to find an <h1> with the text 'Multiplication', but didn't find one."
  end
end

describe "/multiply" do
  it "has a `<form>` element", points: 1 do
    visit "/multiply"

    expect(page).to have_css("form", count: 1),
      "Expected to find one form element on the page but found 0 or more than 1."
  end
end

describe "/multiply" do
  it "has a label with the text 'Multiply this:'", points: 1, hint: h("copy_must_match") do
    visit "/multiply"

    expect(page).to have_css("label", text: /Multiply this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/multiply" do
  it "has a label with the text 'by this:'", points: 1, hint: h("copy_must_match") do
    visit "/multiply"

    expect(page).to have_css("label", text: /by this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/multiply" do
  it "has two `<input>` elements", points: 1 do
    visit "/multiply"

    expect(page).to have_css("input", count: 2)
  end
end

describe "/multiply" do
  it "has a button element with text 'Multiply!'", points: 1, hint: h("copy_must_match") do
    visit "/multiply"

    expect(page).to have_css("button", text: /Multiply/i)
  end
end

describe "/multiply" do
  it "has a `<form>` element with an 'action' attribute", points: 1 do
    visit "/multiply"

    expect(page).to have_css("form[action]"),
      "Expected page to have a form element with an 'action' attribute but didn't find one."
  end
end

describe "/multiply" do
  it "has a label with the text 'Multiply this:' that has a matching input", points: 1, hint: h("label_for_input") do
    visit "/multiply"
    name_label = find("label", :text => /Multiply this/i)
    for_attribute = name_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")

      all_input_ids = all_inputs.map { |input| input[:id] }

      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found #{all_input_ids.count(for_attribute)}."
    end
  end
end

#  end multiply
#  start divide

describe "/divide" do
  it "has a functional URL", points: 1 do
    visit "/divide"

    expect(page.status_code).to be(200)
  end
end

describe "/divide" do
  it "has an `<h1>` with the text 'Division'", points: 1 do
    visit "/divide"

    heading = find("h1", :text => /Division/i)
    expect(heading).to_not be_nil,
      "Expected to find an <h1> with the text 'Division', but didn't find one."
  end
end

describe "/divide" do
  it "has a `<form>` element", points: 1 do
    visit "/divide"

    expect(page).to have_css("form", count: 1),
      "Expected to find one form element on the page but found 0 or more than 1."
  end
end

describe "/divide" do
  it "has a label with the text 'Divide this:'", points: 1, hint: h("copy_must_match") do
    visit "/divide"

    expect(page).to have_css("label", text: /Divide this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/divide" do
  it "has a label with the text 'by this:'", points: 1, hint: h("copy_must_match") do
    visit "/divide"

    expect(page).to have_css("label", text: /by this/i),
      "Expected to find a 'label' element with specified text, but didn't find one."
  end
end

describe "/divide" do
  it "has two `<input>` elements", points: 1 do
    visit "/divide"

    expect(page).to have_css("input", count: 2)
  end
end

describe "/divide" do
  it "has a button element with text 'Divide!'", points: 1, hint: h("copy_must_match") do
    visit "/divide"

    expect(page).to have_css("button", text: /Divide/i)
  end
end

describe "/divide" do
  it "has a `<form>` element with an 'action' attribute", points: 1 do
    visit "/divide"

    expect(page).to have_css("form[action]"),
      "Expected page to have a form element with an 'action' attribute but didn't find one."
  end
end

describe "/divide" do
  it "has a label with the text 'Divide this:' that has a matching input", points: 1, hint: h("label_for_input") do
    visit "/divide"
    name_label = find("label", :text => /Divide this/i)
    for_attribute = name_label[:for]

    if for_attribute.nil?
      expect(for_attribute).to_not be_empty,
        "Expected label's for attribute to be set to a non empty value, was '#{for_attribute}' instead."
    else
      all_inputs = all("input")

      all_input_ids = all_inputs.map { |input| input[:id] }

      expect(all_input_ids.count(for_attribute)).to eq(1),
        "Expected label's for attribute(#{for_attribute}) to match only 1 of the ids of an <input> tag (#{all_input_ids}), but found #{all_input_ids.count(for_attribute)}."
    end
  end
end

#  end divide

# start add results
describe "/add" do
  it "has a form that submits to a valid route", points: 1, hint: h("button_type") do
    visit "/add"

    find("button", :text => /Add/i).click

    expect(page).to_not have_current_path("/add", ignore_query: true),
      "Expected form to submit to a different Route, but didn't."
  end
end

describe "/add" do
  it "displays the first number entered when the form is submitted", points: 1 do
    visit "/add"

    fill_in "Add this:", with: 5
    fill_in "to this:", with: 13.5

    find("button", :text => /Add/i).click

    expect(page).to have_content(/5/),
      "Expected results page of the form to display number from the first input (5), but didn't."
  end
end

describe "/add" do
  it "displays the second number entered when the form is submitted", points: 1 do
    visit "/add"

    fill_in "Add this:", with: 7
    fill_in "to this:", with: 11

    find("button", :text => /Add/i).click

    expect(page).to have_content(11)
    "Expected results page of the form to display number from the second input (11), but didn't."
  end
end

describe "/add" do
  it "displays the sum when the form is submitted", points: 1 do
    visit "/add"

    fill_in "Add this:", with: 41.42
    fill_in "to this:", with: 27.58

    find("button", :text => /Add/i).click

    expect(page).to have_content(/69/),
      "Expected results page of the form to display 69 (when inputs are 41.42 and 27.58), but didn't."
  end
end
# end add results

# start subtract results
describe "/subtract" do
  it "has a form that submits to a valid route", points: 1, hint: h("button_type") do
    visit "/subtract"

    find("button", :text => /Subtract/i).click

    expect(page).to_not have_current_path("/subtract", ignore_query: true),
      "Expected form to submit to a different Route, but didn't."
  end
end

describe "/subtract" do
  it "displays the first number entered when the form is submitted", points: 1 do
    visit "/subtract"

    fill_in "Subtract this:", with: 10
    fill_in "from this:", with: 13

    find("button", :text => /Subtract/i).click

    expect(page).to have_content(/10/),
      "Expected results page of the form to display number from the first input (10), but didn't."
  end
end

describe "/subtract" do
  it "displays the second number entered when the form is submitted", points: 1 do
    visit "/subtract"

    fill_in "Subtract this:", with: 7
    fill_in "from this:", with: 11

    find("button", :text => /Subtract/i).click

    expect(page).to have_content(11)
    "Expected results page of the form to display number from the second input (11), but didn't."
  end
end

describe "/subtract" do
  it "displays the difference when the form is submitted", points: 1 do
    visit "/subtract"

    fill_in "Subtract this:", with: 69.0
    fill_in "from this:", with: 27.5

    find("button", :text => /Subtract/i).click

    expect(page).to have_content(/41.5/),
      "Expected results page of the form to display 42.5 when inputs are 69 and 27.5, but didn't."
  end
end
# end sub results

# start multi results
describe "/multiply" do
  it "has a form that submits to a valid route", points: 1, hint: h("button_type") do
    visit "/multiply"

    find("button", :text => /Multiply/i).click

    expect(page).to_not have_current_path("/multiply", ignore_query: true),
      "Expected form to submit to a different Route, but didn't."
  end
end

describe "/multiply" do
  it "displays the first number entered when the form is submitted", points: 1 do
    visit "/multiply"

    fill_in "Multiply this:", with: 3.5
    fill_in "by this:", with: 8

    find("button", :text => /Multiply/i).click

    expect(page).to have_content(/3.5/),
      "Expected results page of the form to display number from the first input (3.5), but didn't."
  end
end

describe "/multiply" do
  it "displays the second number entered when the form is submitted", points: 1 do
    visit "/multiply"

    fill_in "Multiply this:", with: 10
    fill_in "by this:", with: 2.2

    find("button", :text => /Multiply/i).click

    expect(page).to have_content(2.2)
    "Expected results page of the form to display number from the second input (2.2), but didn't."
  end
end

describe "/multiply" do
  it "displays the product when the form is submitted", points: 1 do
    visit "/multiply"

    fill_in "Multiply this:", with: 62
    fill_in "by this:", with: 27.5

    find("button", :text => /Multiply/i).click

    expect(page).to have_content(/1705/),
      "Expected results page of the form to display the product of 1705 (when inputs are 62 and 27.5), but didn't."
  end
end
# end multi results

# start division results
describe "/divide" do
  it "has a form that submits to a valid route", points: 1, hint: h("button_type") do
    visit "/divide"

    find("button", :text => /Divide/i).click

    expect(page).to_not have_current_path("/divide", ignore_query: true),
      "Expected form to submit to a different Route, but didn't."
  end
end

describe "/divide" do
  it "displays the first number entered when the form is submitted", points: 1 do
    visit "/divide"

    fill_in "Divide this:", with: 5.5
    fill_in "by this:", with: 8

    find("button", :text => /Divide/i).click

    expect(page).to have_content(/5.5/),
      "Expected results page of the form to display number from the first input (5.5), but didn't."
  end
end

describe "/divide" do
  it "displays the second number entered when the form is submitted", points: 1 do
    visit "/divide"

    fill_in "Divide this:", with: 10
    fill_in "by this:", with: 2.2

    find("button", :text => /Divide/i).click

    expect(page).to have_content(2.2)
    "Expected results page of the form to display number from the second input (2.2), but didn't."
  end
end

describe "/divide" do
  it "displays the quotient when the form is submitted", points: 1 do
    visit "/divide"

    fill_in "Divide this:", with: 62
    fill_in "by this:", with: 4

    find("button", :text => /Divide/i).click

    expect(page).to have_content(/15.5/),
      "Expected results page of the form to display the quotient of 15.5 (when inputs are 62 and 4), but didn't."
  end
end
