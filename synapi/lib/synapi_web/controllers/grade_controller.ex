defmodule SynapiWeb.GradeController do
  use SynapiWeb, :controller


  def index(conn, %{"password" => password, "semester" => period, "userid" => userid}) do
    render conn, "grades.json", gradebook: Synwrap.gradebook(userid, password, period)

  end
end
