def fact(N, fact_val):
    if N==0:
        return fact_val
    return fact(N-1, fact_val*N)


def Flavours(N, K):
    ans = 0
    upper = fact(N, 1)
    for i in range(2, K+1):
        denominator1 = fact(i, 1)
        denominator2 = fact(N-i, 1)
        combinations = upper/(denominator2*denominator1)
        ans+=combinations
    return int(ans+N)

