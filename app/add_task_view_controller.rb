class AddTaskViewController < UIViewController
  attr_accessor :task

  def loadView
    self.title = "Add Task"
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    @text_field = UITextField.new
    @text_field.frame = [[20, 100], [280, 50]]
    @text_field.backgroundColor = UIColor.lightGrayColor
    @text_field.placeholder = "Enter your task"
    view.addSubview(@text_field)
  end

  def viewWillDisappear(_)
    task.title = @text_field.text
  end
end
