class MainViewController < UIViewController
  def loadView
    self.view = UIView.new

    label = UILabel.new
    label.text = "Hello RubyMotion!"
    label.frame = [[20, 100], [280, 30]]
    view.addSubview(label)

    red_square = UIView.new
    red_square.frame = [[135, 150], [50, 50]]
    red_square.backgroundColor = UIColor.redColor
    view.addSubview(red_square)
  end
end
