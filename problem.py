#without Broadcasting 

Prices = [100, 200, 300]
discount = 10 #10% discount on a product price

final_prices = []

for Price in Prices:
    final_price = Price - (Price * discount / 100)
    final_prices.append(final_price)

print(final_prices)    
