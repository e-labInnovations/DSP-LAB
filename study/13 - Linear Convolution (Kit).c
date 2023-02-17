/**
 *  Linear Convolution
 * main.c
 *
 *  X   1   2   3
 *  1   1   2   3
 *  2   2   4   6
 *  2   2   4   6
 */

void main() {
    int *Xn, *Hn, *Yn;
    int *XnLength, *HnLength;
    
    Xn       = (int*) 0x80010000;
    Hn       = (int*) 0x80011000;
    XnLength = (int*) 0x80012000;
    HnLength = (int*) 0x80013000;
    Yn       = (int*) 0x80014000;

    int m, n, i, j;
    m = *XnLength;
    n = *HnLength;

    //Clear output
    for(i=0; i<(m+n-1); i++) {
        Yn[i] = 0;
    }

    for(i=0; i<n; i++) {
        for(j=0; j<m; j++) {
            Yn[j+i] = Yn[j+i] + Xn[j]*Hn[i];
        }
    }

    return 0
}