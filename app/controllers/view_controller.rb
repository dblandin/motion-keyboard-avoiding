class ViewController < UIViewController
  TEXTFIELD_HEIGHT = 44
  VERTICAL_MARGIN  = 10
  HORIZONTAL_MARGIN = 20

  attr_reader :keyboard_avoiding

  def viewDidLoad
    super

    view.backgroundColor = UIColor.whiteColor

    navigationItem.rightBarButtonItem = push_button

    @keyboard_avoiding = Motion::KeyboardAvoiding.new(view)

    5.times { |i| add_text_field(i) }
  end

  def push_button
    UIBarButtonItem.alloc.initWithTitle('Push',
                                        style: UIBarButtonItemStyleBordered,
                                        target: self,
                                        action: 'push_controller:')
  end

  def push_controller(sender)
    navigationController.pushViewController(ViewController.alloc.init, animated: true)
  end

  def add_text_field(i)
    x, y = HORIZONTAL_MARGIN, i * TEXTFIELD_HEIGHT + VERTICAL_MARGIN
    w, h = view.size.width - HORIZONTAL_MARGIN * 2, TEXTFIELD_HEIGHT

    UITextField.alloc.initWithFrame([[x, y], [w, h]]).tap do |text_field|
      text_field.text     = i.to_s
      text_field.delegate = self

      view.addSubview(text_field)
    end
  end
end
