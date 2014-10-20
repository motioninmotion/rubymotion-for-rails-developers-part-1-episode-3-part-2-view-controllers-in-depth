class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @window.rootViewController = MainViewController.new

    @window.backgroundColor = UIColor.grayColor

    @window.makeKeyAndVisible
    true
  end
end
