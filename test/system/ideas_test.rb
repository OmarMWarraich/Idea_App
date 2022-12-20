require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
  setup do
    @idea = ideas(:one)
  end

  test "visiting the index" do
    visit ideas_url
    assert_selector "h1", text: "Ideas"
  end

  test "should create idea" do
    visit ideas_url
    click_on "New idea"

    fill_in "Description", with: @idea.description
    fill_in "Name", with: @idea.name
    fill_in "Picture", with: @idea.picture
    click_on "Create Idea"

    assert_text "Idea was successfully created"
    click_on "Back"
  end

  test "should update Idea" do
    visit idea_url(@idea)
    click_on "Edit this idea", match: :first

    fill_in "Description", with: @idea.description
    fill_in "Name", with: @idea.name
    fill_in "Picture", with: @idea.picture
    click_on "Update Idea"

    assert_text "Idea was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea" do
    visit idea_url(@idea)
    click_on "Destroy this idea", match: :first

    assert_text "Idea was successfully destroyed"
  end
end
