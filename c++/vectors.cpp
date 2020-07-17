#include <iostream>
#include <vector>

int main() {
  std::vector<int> vec {1,2,3,4,5};

  std::cout << "Last element: " << vec.back() << std::endl;
  std::cout << "Last element: " << vec.end()[-1] << std::endl;
  std::cout << "Second last element: " << vec.end()[-2] << std::endl;

  std::cout << "Iterate over vector" << std::endl;
  for (auto value : vec) {
    std::cout << value << std::endl;
  }

  std::cout << "Iterate over vector with index" << std::endl;
  for (int index = 0; index < vec.size(); ++index)
  {
    std::cout << vec[index] << std::endl;
  }
}
