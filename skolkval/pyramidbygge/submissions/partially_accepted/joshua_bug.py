n=int(input())
ans = 1
tot = 1
while tot < n:
    ans += 1
    tot += (2*ans+1)**2
print(ans)
