#include <iostream>

int main()
{
    double volts, ohms;
    if (!(std::cin >> volts >> ohms) || ohms <= 0)
    {
        std::cout << "Invalid input\n";
        return 0;
    }
    std::cout << "Current: " << volts / ohms << " A\n";
}
