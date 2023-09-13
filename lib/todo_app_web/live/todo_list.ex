defmodule  TodoAppWeb.TodoList do
  use  TodoAppWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:item, "")
      |> assign(:todos, [])

    {:ok, socket}
  end

  def handle_event(
        "add_todo",
        %{"item" => item},
        socket
      ) do
    news=socket.assigns.todos++[item]

    socket =
      socket
      |> assign(:item, "")
      |> assign(:todos, news)

    {:noreply, socket}
  end

end
