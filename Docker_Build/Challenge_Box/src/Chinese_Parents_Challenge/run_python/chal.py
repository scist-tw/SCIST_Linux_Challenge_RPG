
def bytes2numlist(b):
    assert (len(b) % 2) == 0

    return [b[i] * 256 + b[i + 1] for i in range(0, len(b), 2)]

def numlist2bytes(n_list):
    b = []
    for n in n_list:
        b += [n // 256, n % 256]

    return bytes(b)

cipher = bytes.fromhex("09169966362e920789001503ade4b12b1794f5deaa161794f500ae00b09715e1a94dd506ae6c8900af4a8900162b610789001503ade4489da6792478")
cipher = bytes2numlist(cipher)
flag = [pow(37, -1, 256**2) * (c - 103) % 256**2 for c in cipher]

print(numlist2bytes(flag).decode())
