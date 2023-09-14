
def bytes2numlist(b):
    assert (len(b) % 2) == 0
    return [b[i] * 256 + b[i + 1] for i in range(0, len(b), 2)]

def numlist2bytes(n_list):
    b = []
    for n in n_list:
        b += [n // 256, n % 256]
    return bytes(b)

cipher = bytes.fromhex("09169966362e9b2289001503ade4cc2b1794f5dec5161794f500ae00cb9715e1a94dd506c96c8900ca4a8900162b6a22e46070630944489dc1792478")
cipher = bytes2numlist(cipher)
flag = [pow(37, -1, 256**2) * (c - 103) % 256**2 for c in cipher]

print(numlist2bytes(flag).decode())
