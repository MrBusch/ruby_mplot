class Plotter

  #LineSpec:
  #Line styles: '-' Solid line (default), '--' Dashed line, ':' Dotted line, '-.' Dash-dot line
  #Marker Type: '+' Plus sign, 'o' Circle', *' Asterisk, '.' Point, 'x' Cross, 's' Square, 'd' Diamond, '^' Upward-pointing triangle, 'v' Downward-pointing triangle, '>' Right-pointing triangle, '<' Left-pointing triangle, 'p' Five-pointed star (pentagram), 'h' Six-pointed star (hexagram)
  #Color: r	Red, g Green, b Blue, c Cyan, m Magenta, y Yellow, k Black, w White
  #Options: LineWidth, MarkerEdgeColor, MarkerFaceColor, MarkerSize

  
  def initialize()
  	@with_options = { "- " => "lines", ". " => "points", "-." => "linespoint" }
  	@colors = {"r" => "red", "g" => "green", "b" => "blue", "c" => "cyan", "m" => "magenta", "y" => "yellow", "k" => "black"}
  end

  def plot(x, y=nil, line_spec=nil, options = {})
  	#X,Y
  	@data = Gnuplot::DataSet.new([x, y]) do |ds|
      # ds.with = @with_options[style[0..1]]
      # ds.linewidth = style[3].to_i
      # ds.linecolor = "rgb \"" + @colors[style[2]] + "\""
    end
  	#X,Y,LineSpec
  	#Y
  	#Y,LineSpec

  end

  def subplot(width, height, nr=nil)
  end

  def draw()
  	Gnuplot.open do |gp|
      Gnuplot::Plot.new(gp) do |plot|
        plot.data << @data
      end
    end
  end

end