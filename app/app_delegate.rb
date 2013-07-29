class AppDelegate
  attr_reader :window

  def application(application, didFinishLaunchingWithOptions: launch_options)

    initialize_main_controller

    true
  end

  def initialize_main_controller
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    window.setRootViewController(nav_controller)

    window.makeKeyAndVisible
  end

  def nav_controller
    UINavigationController.alloc.initWithRootViewController(view_controller)
  end

  def view_controller
    ViewController.alloc.init
  end
end
