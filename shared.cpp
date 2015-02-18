#include <boost/python.hpp>
#include <boost/numpy.hpp>
#include "shared.hpp"

namespace bn = boost::numpy;

bn::dtype getDType() {
   return bn::dtype::get_builtin<double>();
}

int dummy() {
    return 1+2;
}
