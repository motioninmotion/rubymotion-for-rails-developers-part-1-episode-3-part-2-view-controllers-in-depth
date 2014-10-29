class MainViewController < UIViewController
  attr_accessor :task

  def init
    super

    self.task = Task.new

    self
  end

  def loadView
    self.title = "Tasks"
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    @button = UIButton.new
    @button.setTitle("Set Task", forState: UIControlStateNormal)
    @button.setTitleColor(UIColor.blueColor, forState: UIControlStateNormal)
    @button.frame = [[20, 100], [280, 30]]
    view.addSubview(@button)

    @label = UILabel.new
    @label.frame = [[20, 150], [280, 30]]
    view.addSubview(@label)
  end

  def viewDidLoad
    @button.addTarget(self, action: :add_task, forControlEvents: UIControlEventTouchUpInside)
  end

  def viewWillAppear(animated)
    @label.text = task.title
  end

  def add_task
    vc = AddTaskViewController.new
    vc.task = task
    navigationController.pushViewController(vc, animated: true)
  end
end
