package main

import (
    "fmt"
)

func printAll(arr []int) {
    for _, v := range arr {
        fmt.Println(v)
    }
}

func main() {
    n := 40000
    arr := make([]int, n)

    for i := 0; i < n; i++ {
        arr[i] = n - i
    }

    printAll(arr)

    fmt.Println("---")

    for i := 0; i < len(arr); i++ {
        for j := 0; j < len(arr)-1-i; j++ {
            tmp := arr[j]
            if arr[j] > arr[j+1] {
                arr[j] = arr[j+1]
                arr[j+1] = tmp
            }
        }
    }

    printAll(arr)
}

