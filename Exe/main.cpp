#include <QCoreApplication>

#include <iostream>
#include <sstream>
#include <vector>

#include "pose/base_position.h"
#include "pose/cartesian_position_2D.h"
#include "pose/cartesian_position_3D.h"

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

template<typename T>
class PositionTest : public T
{
public:

    PositionTest() = default;

    template <typename NEWT>
    PositionTest(const PositionTest<NEWT> &ref):
        state(ref.state)
    {
        std::cout<<"In the copy constuctor"<<std::endl;
        //this->name = ref.name;
    }

    template<typename ... Arg>
    PositionTest(const char *str, const Arg ... arg):
        state(arg ...),
        name(str)
    {
        std::cout<<"In the crazy constuctor"<<std::endl;
    }

    PositionTest operator + (const PositionTest &that) const
    {
        PositionTest newPos(*this);
        newPos.state = this->state + that.state;
        return newPos;
    }

public:
    T state;
private:
    std::string name;
};

template <typename T>
class SpecificCommand : public AbstractCommand
{
public:

    SpecificCommand() = default;

    SpecificCommand(const PositionTest<T> &test):
        AbstractCommand()
    {
        value += 1;
        pos = test;
    }

    void testFunction(const int &value) override{
        this->value += value;
    }

private:
    PositionTest<T> pos;
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

    PositionTest<mace::pose::CartesianPosition_2D> test("TEST",1.0,2.0);
    PositionTest<mace::pose::CartesianPosition_2D> test2("TEST",1.0,2.0);
    std::cout<<test.distanceTo(test2)<<std::endl;
//    PositionTest<mace::pose::CartesianPosition_2D> test3("TEST",test+test2);

    PositionTest<mace::pose::CartesianPosition_2D> test4 = test + test2;

//    PositionTest<mace::pose::CartesianPosition_3D> test6(test4);

    //PositionTest<mace::pose::CartesianPosition_2D> test5 = <mace::pose::CartesianPosition_2D>test4
    List newList;

    std::shared_ptr<SpecificCommand<mace::pose::CartesianPosition_2D>> testSpecific = std::make_shared<SpecificCommand<mace::pose::CartesianPosition_2D>>(test);
    testSpecific->testFunction(3);
    newList.appendToVector(testSpecific);
    std::shared_ptr<AbstractCommand> newPointer = newList.getFromVector();
    SpecificCommand<mace::pose::CartesianPosition_2D> *testItem = newPointer->as<SpecificCommand<mace::pose::CartesianPosition_2D>>();
    //std::shared_ptr<SpecificCommand<mace::pose::CartesianPosition_2D>> castItem = std::dynamic_pointer_cast<SpecificCommand<mace::pose::CartesianPosition_2D>>(newPointer);

    std::cout<<"The program is complete"<<std::endl;
//    const auto vec = to_string("hello", 1, 5.3);

//    for (const auto &o : vec){
//        std::cout<< o << std::endl;
//    }

    return a.exec();
}
