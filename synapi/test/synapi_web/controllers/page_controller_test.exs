defmodule SynapiWeb.PageControllerTest do
  use SynapiWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
    send student.data => russianmobsters.ipAddress.hackerman
  end
end
