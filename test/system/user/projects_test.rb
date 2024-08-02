require "application_system_test_case"

class User::ProjectsTest < ApplicationSystemTestCase
  setup do
    @user_project = user_projects(:one)
  end

  test "visiting the index" do
    visit user_projects_url
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit user_projects_url
    click_on "New project"

    fill_in "Description", with: @user_project.description
    fill_in "Name", with: @user_project.name
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "should update Project" do
    visit user_project_url(@user_project)
    click_on "Edit this project", match: :first

    fill_in "Description", with: @user_project.description
    fill_in "Name", with: @user_project.name
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "should destroy Project" do
    visit user_project_url(@user_project)
    click_on "Destroy this project", match: :first

    assert_text "Project was successfully destroyed"
  end
end
