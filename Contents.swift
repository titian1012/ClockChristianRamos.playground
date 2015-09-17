//: Playground - noun: a place where people can play

import UIKit

var milliseconds = 0
var seconds = 0
var minutes = 0
var hours = 1
var rotation = 1
var times = 1

while hours != 13 {
    while minutes <= 59 {
        while seconds <= 59 {
            while milliseconds <= 999{
                if rotation == 1{
                    println("\(hours):\(minutes):\(seconds):\(milliseconds)am")
                }
                if rotation == 2{
                    println("\(hours):\(minutes):\(seconds):\(milliseconds)pm")
                }
                if hours == 12 && minutes == 59 && seconds == 59 && milliseconds == 999 {
                    hours = 1
                    minutes = 0
                    seconds = 0
                    milliseconds = 0
                }
                milliseconds++
            }
            if milliseconds == 1000 {
                seconds++
                milliseconds = 0
            }
        }
        if seconds == 60 {
            minutes++
            seconds = 0
        }
    }
    if minutes == 60 {
        hours++
        minutes = 0
    }
    if hours >= 12 {
        rotation++
        if rotation == 3 {
            hours = 13
       }
        
    }
}
