defmodule ExAmpleLiveWeb.FooLive do
  use ExAmpleLiveWeb, :live_view

  def mount(_params, %{}, socket) do
    {:ok, assign(socket, :person, %{name: nil, quest: nil, color: nil})}
  end

  def handle_event("name", %{"person" => %{"name" => name}}, socket) do
    person = %{socket.assigns[:person] | name: name}
    {:noreply, assign(socket, :person, person)}
  end

  def handle_event("quest", %{"person" => %{"quest" => quest}}, socket) do
    person = %{socket.assigns[:person] | quest: quest}
    {:noreply, assign(socket, :person, person)}
  end

  def handle_event("color", %{"person" => %{"color" => color}}, socket) do
    person = %{socket.assigns[:person] | color: color}
    {:noreply, assign(socket, :person, person)}
  end
end
