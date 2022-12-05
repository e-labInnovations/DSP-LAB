

/**
 * N-DFT
 * main.c
 */
#include<math.h>
int main(void) {
    float *Xn, *YnReal, *YnImg;
    int *Xlen, *N;
    Xn=(float *)0x80010000;       //input x(n)
    YnReal=(float *)0x80011000;       //real part of output
    YnImg=(float *)0x80012000;       //img part of output
    Xlen=(int *)0x80013000;
    N=(int *)0x80014000;
    int i,k,n,len;
    n=*N;
    len=*Xlen;
    for(k=0;k<n;k++) {
        YnReal[k]=0;
        YnImg[k]=0;

    }

//    while(len>n); //Stop program

    for(k=len;k<n;k++) {
      Xn[k]=0;
    }
    for(k=0;k<n;k++) {
        for(i=0;i<n;i++) {
           YnReal[k]=YnReal[k]+(Xn[i]*cos(2*3.14*k*i/n));
           YnImg[k]=YnImg[k]-(Xn[i]*sin(2*3.14*k*i/n));
        }
    }

}

