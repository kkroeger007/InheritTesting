#include <QCoreApplication>

#include <iostream>
#include <sstream>
#include <vector>

#include "pose/base_position.h"
#include "pose/cartesian_position_2D.h"


template<typename T>
class Named : public T
{
public:
    template<typename ... Arg>
    Named(const char *str, const Arg ... arg):
        pos(arg ...),
        name(str)
    {

    }
protected:
    T pos;
private:
    std::string name;
};

class Waypoint{
public:
    Waypoint(const double &lat, const double &lng):
        mLat(lat), mLng(lng)
    {
        std::cout<<"I have made it into here"<<std::endl;
    }

private:
    double mLat;
    double mLng;
};

template<typename T>
std::string to_string_impl(const T& t)
{
    std::stringstream ss;
    ss << t;
    return ss.str();
}

std::vector<std::string> to_string()
{
    return std::vector<std::string>();
}

template <typename P1, typename ... Param>
std::vector<std::string> to_string(const P1 &p1, const Param& ... param)
{
    std::vector<std::string> s;
    s.push_back(to_string_impl(p1));
    const auto remainder = to_string(param...);
    s.insert(s.end(), remainder.begin(), remainder.end());
    return s;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Named<mace::pose::CartesianPosition_2D> test("TEST",1.0,2.0);
    Named<mace::pose::CartesianPosition_2D> test2("TEST",1.0,2.0);

    Named<mace::pose::CartesianPosition_2D> test3("TEST",test+test2);

    std::cout<<"The program is complete"<<std::endl;
//    const auto vec = to_string("hello", 1, 5.3);

//    for (const auto &o : vec){
//        std::cout<< o << std::endl;
//    }

    return a.exec();
}
