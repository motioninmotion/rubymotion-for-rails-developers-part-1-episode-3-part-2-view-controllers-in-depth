class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    label = UILabel.new
    label.text = "Hello RubyMotion!"
    label.frame = [[20, 100], [280, 30]]
    @window.addSubview(label)

    red_square = UIView.new
    red_square.frame = [[135, 150], [50, 50]]
    red_square.backgroundColor = UIColor.redColor
    @window.addSubview(red_square)

    @window.backgroundColor = UIColor.grayColor

    @window.makeKeyAndVisible
    true
  end
end
