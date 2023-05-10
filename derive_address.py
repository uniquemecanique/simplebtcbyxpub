import sys
from bitcoin import *

def derive_address(xpub, index):
    child_key = bip32_ckd(xpub, index)
    public_key = bip32_extract_key(child_key)
    address = pubtoaddr(public_key)
    return address

if len(sys.argv) != 3:
    print("Usage: derive_address.py <xpub> <index>")
    sys.exit(1)

xpub = sys.argv[1]
index = int(sys.argv[2])

address = derive_address(xpub, index)

print(address)

