package main

import (
    "fmt"
    "time"
    "math/rand"
)

func say(s string, sl int) {
    for i := 0; i < sl; i++ {
        time.Sleep(100 * time.Millisecond)
    }
    fmt.Println(s)
}

func main() {
    go say("world", rand.Intn(10))
}
