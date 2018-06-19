class ProductsNotifierMailer < ApplicationMailer
    default from: 'warsztaty@infakt.pl'
    layout 'mailer'

    def discount(product, user)
        @product = product
        @user = user

        mail(to: user.email, subject: "Przeceniliśmy produkt!")
        ProductsNotifier.discount(Product.find(xx), User.find(yy)).deliver_now
    end
end
