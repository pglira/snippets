#include <iostream>
#include <chrono>
#include <fstream>
#include <iomanip>

std::string Timestamp() {
  auto t = time(nullptr);
  auto tm = *localtime(&t);
  std::ostringstream oss;
  oss << std::put_time(&tm, "%H:%M:%S");
  return oss.str();
}

int main() {
  std::cout << Timestamp() << std::endl;
}

