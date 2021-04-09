class CheckoutsController < ApplicationController
  before_action :authenticate_user!

  def show
    current_user.processor = :stripe
    current_user.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: [
        quantity: 1,
        name: course.name,
        amount: (course.price * 100).to_i,
        currency: "USD",
        description: course.description
      ]
    )
  end
end
