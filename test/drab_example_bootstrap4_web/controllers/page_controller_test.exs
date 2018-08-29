defmodule DrabExampleBootstrap4Web.PageControllerTest do
  use DrabExampleBootstrap4Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
