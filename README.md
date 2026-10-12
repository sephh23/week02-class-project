# week02-class-project

Ohm's law calculator in C++. You give it a voltage and a resistance and it prints the current using I = V / R.

## Input

Two numbers: the voltage in volts, then the resistance in ohms, like `12 4`.

If the input isn't a number or the resistance is 0 or negative, it prints `Invalid input`.

## Build and run

```bash
mkdir -p build
g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app
./build/app
```

## Example

```
$ echo "12 4" | ./build/app
Current: 3 A
```

## Tests

```bash
bash test.sh
```

Prints `All acceptance tests passed` if both tests pass.

## Limitations

- Only does one calculation per run
- Doesn't check units, it just assumes volts and ohms
- Decimals print with the default precision, so you get stuff like 0.333333

## Debugging reflection

At first I wasn't sure why `12 0` printed `Invalid input` instead of crashing. The if statement checks two things: if reading the numbers failed, or if ohms is 0 or less. `12 0` reads fine but ohms is 0, so it hits the second check and never gets to the division.
