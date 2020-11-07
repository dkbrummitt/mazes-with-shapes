defmodule Mazes.RectangularMazeEntranceAndExit do
  alias Mazes.{RectangularMaze, RectangularMazeDistances}

  @doc "Sets from and to of a maze so that the path requires to connect the two is the longest path in the maze"
  def set_longest_path_from_and_to(maze) do
    {from, _} = RectangularMazeDistances.find_max_vertex_by_distance(maze, {1, 1})
    {to, _} = RectangularMazeDistances.find_max_vertex_by_distance(maze, from)
    %{maze | from: from, to: to}
  end

  @doc "Sets two random border vertices as from and to"
  def set_random_border_from_and_to(maze) do
    border_vertices = RectangularMaze.border_vertices(maze)
    [from, to | _] = Enum.shuffle(border_vertices)

    %{maze | from: from, to: to}
  end
end