require "httparty"
require "JSON"

response = HTTParty.post("https://api.stripe.com/v1/customers", {
    body: {
        "email": "thisisreallycool@test.com"
    },
    headers: {
        "Authorization": "Bearer sk_test_BJAkCxNvgavnKIXwbh2pc6uv00UrZ1GEzF",
        "Content-Type": "application/x-www-form-urlencoded"
    }
})

if response.code == 200
    data = JSON.parse(response.body)
    p data
end