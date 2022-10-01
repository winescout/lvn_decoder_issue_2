defmodule PhxAppWeb.ComponentLive do
  use Phoenix.LiveComponent

  def render(assigns) do 
    ~H"""
    <vstack>
      <%= for b <- [1,2,3] do %>
        <text id={"component_text_#{@a}#{b}"}>in Component</text>
      <% end %>
    </vstack>
    """
  end
end
