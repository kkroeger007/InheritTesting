#include <QCoreApplication>

#include <iostream>
#include <sstream>
#include <vector>

#include "pose/base_position.h"
#include "pose/cartesian_position_2D.h"
#include "pose/cartesian_position_3D.h"

#include "geometry/base_polygon.h"

#include <memory>

class AbstractCommand{
public:
    AbstractCommand():
        value(0)
    {
    }

    template <class T>
    T* as()
    {
        static_assert(std::is_base_of<AbstractCommand, T>::value, "Not of appropriate coordianate frame");

        T *castItem = static_cast<T*>(this);
//        T baseItem = *castItem.get();
        return castItem;
    }

    virtual void testFunction(const int &value) = 0;
protected:
    int value;
};


template <typename T>
class SpecificCommand : public AbstractCommand
{
public:

    SpecificCommand() = default;

    SpecificCommand(const mace::pose::PositionTest<T> &test):
        AbstractCommand()
    {
        value += 1;
        pos = test;
    }

    void testFunction(const int &value) override{
        this->value += value;
    }

private:
    mace::pose::PositionTest<T> pos;
};

class List{
public:
    List() = default;

    void appendToVector(const std::shared_ptr<AbstractCommand> commandItem){
        mVector.push_back(commandItem);
    }

    std::shared_ptr<AbstractCommand> getFromVector()
    {
        return mVector.at(0);
    }

private:
    std::vector<std::shared_ptr<AbstractCommand>> mVector;
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
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> point1("TEST1",0.0,0.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> point2("TEST",0.0,1.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> point3("TEST1",1.0,1.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> point4("TEST",1.0,0.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> point5("TEST",0.0,1.0);

    mace::geometry::PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>> polygon;
    polygon.appendVertex(point1);
    polygon.appendVertex(point2);
    polygon.appendVertex(point3);
    polygon.appendVertex(point4);
    std::vector<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>> vertices = polygon.getVector();
    polygon.getBoundingRect();

    std::cout<<"Was the point inside: "<<polygon.contains(point5,true)<<std::endl;

//    std::cout<<test.distanceTo(test2)<<std::endl;
//    test2 = test;

//    if(test>=test2)
//        std::cout<<"It is in here"<<std::endl;

//    PositionTest<mace::pose::CartesianPosition_2D> test3("TEST",test+test2);

//    PositionTest<mace::pose::CartesianPosition_2D> test4 = test + test2;

//    PositionTest<mace::pose::CartesianPosition_3D> test6("TEST",1.0,2.0,3.0);

//    mace::pose::CartesianPosition_2D test2D(1.0,2.0);
//    mace::pose::CartesianPosition_3D test3D(1.0,2.0,3.0);


//    if(test2D>test2D)
//        std::cout<<"It is in here"<<std::endl;

//    if(test2D<test2D)
//        std::cout<<"Test 2D is less than"<<std::endl;
//    else if(test2D==test2D)
//        std::cout<<"They are equal"<<std::endl;
//    else
//        std::cout<<"Test 2D is greater than"<<std::endl;

//    PositionTest<mace::pose::CartesianPosition_2D> test5 = <mace::pose::CartesianPosition_2D>test4
//    List newList;

//    std::shared_ptr<SpecificCommand<mace::pose::CartesianPosition_2D>> testSpecific = std::make_shared<SpecificCommand<mace::pose::CartesianPosition_2D>>(test);
//    testSpecific->testFunction(3);
//    newList.appendToVector(testSpecific);
//    std::shared_ptr<AbstractCommand> newPointer = newList.getFromVector();
//    SpecificCommand<mace::pose::CartesianPosition_2D> *testItem = newPointer->as<SpecificCommand<mace::pose::CartesianPosition_2D>>();
//    std::shared_ptr<SpecificCommand<mace::pose::CartesianPosition_2D>> castItem = std::dynamic_pointer_cast<SpecificCommand<mace::pose::CartesianPosition_2D>>(newPointer);

//    std::cout<<"The program is complete"<<std::endl;
//    const auto vec = to_string("hello", 1, 5.3);

//    for (const auto &o : vec){
//        std::cout<< o << std::endl;
//    }

    return a.exec();
}
