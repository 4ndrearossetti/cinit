#include <iostream>

#include <Eigen/Dense>

int main() {
    Eigen::Matrix3d m = Eigen::Matrix3d::Identity();
    m(0, 2) = 2.5;
    std::cout << "m * m^T =\n" << m * m.transpose() << '\n';
    return 0;
}
