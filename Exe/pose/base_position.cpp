#include "base_position.h"

namespace mace {
namespace pose {

template<typename T>
template<typename ... Arg>
TestPosition<T>::TestPosition(const char *str, Arg ... arg):
    T(arg ...),
    name(str)
{

}

}
}
