n=int(input())
ans = 0
tot = 0
while tot <= n:
    tot += (2*ans+1)**2
    ans += 1
print(ans-1)
