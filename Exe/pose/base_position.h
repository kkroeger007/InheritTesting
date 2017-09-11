#ifndef BASE_POSITION_H
#define BASE_POSITION_H

#include <iostream>

#include "abstract_position.h"

#include "misc/data_2d.h"
#include "misc/data_3d.h"

#include "coordinate_frame.h"

namespace mace{
namespace pose{


class CartesianPosition
{

};

template<typename T>
class PositionTest : public T
{
public:

    PositionTest() = default;

    template <typename NEWT>
    PositionTest(const PositionTest<NEWT> &ref):
        T(ref)
    {
        std::cout<<"In the copy constuctor"<<std::endl;
        //this->name = ref.name;
    }

    template<typename ... Arg>
    PositionTest(const char *str, const Arg ... arg):
        T(arg ...),
        name(str)
    {
        std::cout<<"In the crazy constuctor"<<std::endl;
    }

    PositionTest& operator = (const PositionTest &copy)
    {
        T::operator=(copy);
        this->name = copy.name;
        return *this;
    }

private:
    std::string name;
};



} // end of namespace pose
} // end of namespace mace

#endif // BASE_POSITION_H
