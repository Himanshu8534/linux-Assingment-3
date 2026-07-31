#!/bin/bash

n=$1
type=$2

# t1 (right aligned)
if [ "$type" = "t1" ]; then
    for ((i=1;i<=n;i++))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=i;j++))
        do
            echo -n "*"
        done
        echo
    done

# t2 (simple)
elif [ "$type" = "t2" ]; then
    for ((i=1;i<=n;i++))
    do
        for ((j=1;j<=i;j++))
        do
            echo -n "*"
        done
        echo
    done

# t3 (pyramid)
elif [ "$type" = "t3" ]; then
    for ((i=1;i<=n;i++))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=2*i-1;j++))
        do
            echo -n "*"
        done
        echo
    done

# t4 (reverse)
elif [ "$type" = "t4" ]; then
    for ((i=n;i>=1;i--))
    do
        for ((j=1;j<=i;j++))
        do
            echo -n "*"
        done
        echo
    done

# t5 (right reverse)
elif [ "$type" = "t5" ]; then
    for ((i=n;i>=1;i--))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=i;j++))
        do
            echo -n "*"
        done
        echo
    done

# t6 (reverse pyramid)
elif [ "$type" = "t6" ]; then
    for ((i=n;i>=1;i--))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=2*i-1;j++))
        do
            echo -n "*"
        done
        echo
    done

# t7 (diamond)
elif [ "$type" = "t7" ]; then
    # upper
    for ((i=1;i<=n;i++))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=2*i-1;j++))
        do
            echo -n "*"
        done
        echo
    done

    # lower
    for ((i=n-1;i>=1;i--))
    do
        for ((s=1;s<=n-i;s++))
        do
            echo -n " "
        done
        for ((j=1;j<=2*i-1;j++))
        do
            echo -n "*"
        done
        echo
    done

else
    echo "Invalid type"
fi
