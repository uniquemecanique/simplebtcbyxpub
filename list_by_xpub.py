from bitcoin import *

def derive_addresses(xpub, number_of_addresses):
    addresses = []
    for i in range(number_of_addresses):
        child_key = bip32_ckd(xpub, i)
        public_key = bip32_extract_key(child_key)
        address = pubtoaddr(public_key)
        addresses.append(address)
    return addresses

xpub = input("Please enter your xpub: ")

addresses = derive_addresses(xpub.strip(), 100)

for address in addresses:
    print(address)
