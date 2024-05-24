#include <stdio.h>

int main() {
  int i, N, n[100], max, sum;
  scanf("%d", &N);
  for(i=0;i<N;i++) scanf("%d", &n[i]);
  max=0; 
  for(i=1;i<N;i++) if (n[i]>max) max=n[i];
  sum=0;
  while(1) {
    for(i=1;i<N && max>=n[0];i++) if(n[i]==max) {
	n[i]--;
	n[0]++;
	sum++;
      }
    if(max<n[0]) break;
    max--;
  }
  printf("%d\n",sum);
  return 0;
}
    
