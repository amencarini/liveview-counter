defmodule CalculatorWeb.CounterLive do
  use CalculatorWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:count, 0)}
  end

  @impl true
  def handle_event("increment", _, socket) do
    count = socket.assigns[:count]

    {:noreply, socket |> assign(:count, count + 1)}
  end

  @impl true
  def handle_event("decrement", _, socket) do
    count = socket.assigns[:count]

    {:noreply, socket |> assign(:count, count - 1)}
  end
end
