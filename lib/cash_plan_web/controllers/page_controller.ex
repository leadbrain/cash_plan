defmodule CashPlanWeb.PageController do
  use CashPlanWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
