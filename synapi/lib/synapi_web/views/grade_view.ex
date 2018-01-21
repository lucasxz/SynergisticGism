defmodule SynapiWeb.GradeView do
  use SynapiWeb, :view

  def render("grades.json", %{gradebook: gradebook}) do
    gradebook
  end
end
