//Circular convolution

void main() {
    int *Xn, *Hn, *Yn;
    int *XnLength, *HnLength;
    Xn       = (int*) 0x80010000;
    Hn       = (int*) 0x80012000;
    Yn       = (int*) 0x80013000;
    XnLength = (int*) 0x80014000;
    HnLength = (int*) 0x80015000;

    int m, n, i, j, circular_length;

    m = *XnLength;
    n = *HnLength;

    //Clear output
    for(i=0;i<m+n;i++) {
        Yn[i] = 0;
    }

    //Linear convolution
    for(i=0;i<m;i++) {
        for(j=0;j<n;j++) {
            Yn[i+j] = Yn[i+j] + Xn[i] * Hn[j];
        }
    }

    //Converting to Circular
    if(m>n) {
        circular_length = m;
    } else {
        circular_length = n;
    }

    for(i=0;i<m+n-1-circular_length;i++) {
        Yn[i] = Yn[i] + Yn[i+circular_length];
        Yn[i+circular_length] = 0;
    }
}