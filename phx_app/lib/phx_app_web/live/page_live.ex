defmodule PhxAppWeb.PageLive do
  use PhxAppWeb, :live_view
  alias PhxAppWeb.ComponentLive

  def render(assigns) do 
    ~H"""
      <vstack id="parent">
        <%= for a <- [1,2,3] do %>
          <.live_component module={ComponentLive} id={"component-#{a}"} a={a} />
        <% end %>
      </vstack>
    """
  end
end
