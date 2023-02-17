//N-DFT
//We know e^(j*theta) = cos(theta) + j*sin(theta)
//Store real and imaginary outputs in different memory address

#include <math.h> //For sin and cos functions and value of pi (M_PI)
void main() {
    float *Xn, *N, *YnReal, *YnImg;
    Xn     = (float*) 0x8001000;
    N      = (float*) 0x8001100;
    YnReal = (float*) 0x80012000;
    YnImg  = (float*) 0x80013000;
    
    int n, k, i;
    n = *N;

    //Clearing output
    for(i=0;i<n;i++) {
        YnReal[i] = 0;
        YnImg[i] = 0;
    }

    for(k=0;k<n;k++) {
        for(i=0;i<n;i++) {
            YnReal[k] = YnReal[k] + (Xn[i] * cos(2*M_PI*k*i/n));
            YnImg[k]  = YnImg[k]  - (Xn[i] * sin(2*M_PI*k*i/n));
        }
    }
}