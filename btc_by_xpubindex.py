from bitcoin import *

def derive_address(xpub, index):
    child_key = bip32_ckd(xpub, index)
    public_key = bip32_extract_key(child_key)
    address = pubtoaddr(public_key)
    return address

xpub = input("Please enter your xpub: ")
index = int(input("Please enter the index number: "))

address = derive_address(xpub.strip(), index)

print(address)

