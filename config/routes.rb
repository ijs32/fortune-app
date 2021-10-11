Rails.application.routes.draw do
  get "/fortunes", controller: "my_examples", action: "fortunes"
  get "/lotto_nums", controller: "my_examples", action: "lotto_nums"
  get "/b_o_b", controller: "my_examples", action: "b_o_b"
end
