

/**
 * N-DFT
 * main.c
 */
#include<math.h>
int main(void) {
    float *Xn, *YnReal, *YnImg;
    int *Xlen ,*N;
    Xn=(float *)0x80010000;       //input x(n)
    YnReal=(float *)0x80020000;       //real part of output
    YnImg=(float *)0x80030000;       //img part of output
    Xlen=(int *)0x80040000;
    N=(int *)0x80050000;
    int i,k,n,len;
    n=*N;
    len=*Xlen;
    for(k=0;k<n;k++)
    {
        YnReal[k]=0;
        YnImg[k]=0;

    }
    YnReal[0]=0;
    YnImg[0]=0;
    while(len>n); //Stop program

    for(k=len;k<n-len;k++) {
      Xn[k]=0;
    }
    for(k=0;k<n;k++) {
        for(i=0;i<n;i++) {
            YnReal[k]=YnReal[k]+Xn[k]*cos(2*3.14*k*i/n);
             YnImg[k]=YnImg[k]+Xn[k]*sin(2*3.14*k*i/n);
        }
    }
	return 0;
}
