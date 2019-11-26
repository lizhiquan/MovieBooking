# Movie Booking

This is a simple example for booking movie seats in general movie/film mobile application.
Hope it will be useful for anyone who are building this context.

# Concept
### State Design Pattern

A seat has many states, such as:
* **EMPTY**: this is not a seat, just a blank space, it does not have any action.
* **RESERVED**: this is a reserved seat, which can not be booked anymore.
* **AVAILABLE**: this seat can be book by selecting.
* **SELECTED**: this seat is being selected, it can be deselected to be available.

To manage these states, we use `State Design Pattern`, also for the definition of state action, current state and switching between different states.
* An `available seat` can be select to be a `selected seat`, its state changes from `AVAILABLE` to `SELECTED`.
* A `selected seat` can be deselected to be an `available seat`, its state changes from `SELECTED` to `AVAILABLE`

# License
```
MIT License

Copyright (c) 2017 Quyen Le

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
