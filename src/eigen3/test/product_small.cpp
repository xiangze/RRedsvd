// This file is part of Eigen, a lightweight C++ template library
// for linear algebra.
//
// Copyright (C) 2006-2008 Benoit Jacob <jacob.benoit.1@gmail.com>
//
// Eigen is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
//
// Alternatively, you can redistribute it and/or
// modify it under the terms of the GNU General Public License as
// published by the Free Software Foundation; either version 2 of
// the License, or (at your option) any later version.
//
// Eigen is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License or the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License and a copy of the GNU General Public License along with
// Eigen. If not, see <http://www.gnu.org/licenses/>.

#define EIGEN_NO_STATIC_ASSERT
#include "product.h"

// regression test for bug 447
void product1x1()
{
  Matrix<float,1,3> matAstatic;
  Matrix<float,3,1> matBstatic;
  matAstatic.setRandom();
  matBstatic.setRandom();
  VERIFY_IS_APPROX( (matAstatic * matBstatic).coeff(0,0), 
                    matAstatic.cwiseProduct(matBstatic.transpose()).sum() );

  MatrixXf matAdynamic(1,3);
  MatrixXf matBdynamic(3,1);
  matAdynamic.setRandom();
  matBdynamic.setRandom();
  VERIFY_IS_APPROX( (matAdynamic * matBdynamic).coeff(0,0), 
                    matAdynamic.cwiseProduct(matBdynamic.transpose()).sum() );
}


void test_product_small()
{
  for(int i = 0; i < g_repeat; i++) {
    CALL_SUBTEST_1( product(Matrix<float, 3, 2>()) );
    CALL_SUBTEST_2( product(Matrix<int, 3, 5>()) );
    CALL_SUBTEST_3( product(Matrix3d()) );
    CALL_SUBTEST_4( product(Matrix4d()) );
    CALL_SUBTEST_5( product(Matrix4f()) );
    CALL_SUBTEST_6( product1x1() );
  }

#ifdef EIGEN_TEST_PART_6
  {
    // test compilation of (outer_product) * vector
    Vector3f v = Vector3f::Random();
    VERIFY_IS_APPROX( (v * v.transpose()) * v, (v * v.transpose()).eval() * v);
  }
#endif
}
