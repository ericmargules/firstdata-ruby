# FirstData Global Payment API Ruby library

## Install
   ```gem install firstdata

   OR
    ```gem 'firstdata'

## Example Transaction       

    require "firstdata"

    fd = FirstData::Portal.new(
      api_key: "Enter Api Key here",
      api_secret: "Enter Api Secret here",
      app_id: "Enter App ID here"
    )

    sale = fd.transaction.sale({
        amount: {
          total: "100.00",
          currency: "USD"
        },
        payment_method: {
          type: "PAYMENT_CARD",
          payment_card: {
            number: "4111111111111111",
            expiry_date: "1223"
          }
        }
    })

    if sale.is_successful?
        puts "Transaction" + sale.ipg_transaction_id + " was successful!"
    else
        puts "Error processing transaction"
        puts "Message: " + sale.error.message
    end

## License

See the [LICENSE](LICENSE) file for more info.