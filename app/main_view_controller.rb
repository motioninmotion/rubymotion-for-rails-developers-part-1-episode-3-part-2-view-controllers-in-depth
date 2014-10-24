class MainViewController < UIViewController
  def loadView
    self.title = "Tasks"
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    button = UIButton.new
    button.setTitle("Add Task", forState: UIControlStateNormal)
    button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
    button.frame = [[20, 100], [280, 30]]
    view.addSubview(button)
  end

  def add_task
    navigationController.pushViewController(MainViewController.new, animated: true)
  end
end
