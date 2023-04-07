class Solution {
public:
    double myPow(double x, long n) { //initialized the data type of n from int to long to avoid the overflow
        if (n == 0){
          return 1;
        }
        if (n < 0) {
            n = -1*n;
            x = 1 / x;
        }
        double pow = 1;  //Initaialized the variable pow to store the result
        while (n > 0) {
            if (n % 2 == 1){
              pow *= x;
            }
            x *= x;
            n /= 2;
        }
        return pow;
    }
};
