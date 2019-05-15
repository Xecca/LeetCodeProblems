/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* shortestToChar(char * S, char C, int* returnSize){
    if (S == NULL || returnSize == NULL)
        return NULL;
     int ip;
     int im;
     int j;
     int countp;
     int countm;
    size_t sz = strlen(S);
    int* a = malloc(sz * sizeof(int));
        
    j = 0;
    while (S[j])
    {
        countp = 0;
        countm = 0;
        ip = j;
        im = j;
        while (S[ip] != C && S[ip] != '\0') 
        {
            countp++;
            ip++;
        }
        while (S[im] != C && im > 0)
        {
            countm++;
            im--;
        }
        if (S[im] == C)
            countm = countm;
        else if (S[im] != C)
            countm = countp;
        if (countp > countm && S[im] != C)
            a[j] = countp;
        else if (countp > countm && S[im] == C)
            a[j] = countm;
        else if (countp < countm && S[ip] != C)
            a[j] = countm;
        else if (countp < countm && S[ip] == C)
            a[j] = countp;
        else if (countp == countm)
            a[j] = countp;
        j++;
    }
    *returnSize = sz;
    return a;  
}
