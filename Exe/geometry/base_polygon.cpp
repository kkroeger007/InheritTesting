#include "base_polygon.h"

namespace mace{
namespace geometry {

template<class T>
PolygonBase<T>::PolygonBase(const std::vector<T> &vector, const std::string &descriptor):
    name(descriptor)
{
    //this->clearPolygon(); we should not have to call this case since this is in the constructer
    m_vertex = vector;
}

template<class T>
PolygonBase<T>::PolygonBase(const PolygonBase &copy)
{
    name = copy.name;
    m_vertex = copy.m_vertex;
}

template <class T>
void PolygonBase<T>::appendVertex(const T &vertex)
{
    m_vertex.push_back(vertex);
}

template<class T>
void PolygonBase<T>::removeVertex(const int &index)
{

}

template <class T>
void PolygonBase<T>::replaceVector(const std::vector<T> &vector)
{
    this->clearPolygon();
    m_vertex = vector;
}

template<class T>
size_t PolygonBase<T>::polygonSize() const
{
    return m_vertex.size();
}

template<class T>
void PolygonBase<T>::clearPolygon()
{
    m_vertex.clear();
    m_vertex.shrink_to_fit();
}

template <>
bool PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>>::contains(const mace::pose::PositionTest<mace::pose::CartesianPosition_2D> &point, const bool &onLineCheck)
{
    if (m_vertex.size() < 3)
        return false;

    const size_t num = this->m_vertex.size();

    if(onLineCheck == true)
    {
        for(size_t i = 0; i < num; i++)
        {
            if(isOnLine(m_vertex[i],m_vertex[i+1],point))
                return true;
        }
    }


    int counter = 0;
    for(size_t i = 0; i < num; i++)
    {
        if(m_vertex[i].getYPosition() <= point.getYPosition())
        {
            if(m_vertex[(i+1)%num].getYPosition() > point.getYPosition())
            {
                double value = isLeftOfInf(m_vertex[i],m_vertex[(i+1)%num],point);
                if(value > 0)
                    ++counter;
                else
                    return true;
            }
        }
        else{
            if(m_vertex[(i+1)%num].getYPosition() <= point.getYPosition())
            {
                double value = isLeftOfInf(m_vertex[i],m_vertex[(i+1)%num],point);
                if(value < 0)
                    --counter;
                else
                    return true;
            }
        }
    }

    return counter != 0;
}

template<>
PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>> PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>>::getBoundingRect() const
{
    bool firstExe = true;
    double maxXVal, minXVal, maxYVal, minYVal;
    PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>> polygon("Bounding Polygon");

    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> LL("Lower Left",0.0,0.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> UL("Upper Left",0.0,0.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> UR("Upper Right",0.0,0.0);
    mace::pose::PositionTest<mace::pose::CartesianPosition_2D> LR("Lower Right",0.0,0.0);

    if(firstExe)
    {
        maxXVal = m_vertex[0].getXPosition();
        minXVal = maxXVal;
        maxYVal = m_vertex[0].getYPosition();
        minYVal = maxYVal;
    }

    const size_t num = this->m_vertex.size();
    for(size_t i = 1; i < num; i++)
    {
        if(m_vertex[i].getXPosition() > maxXVal)
            maxXVal = m_vertex[i].getXPosition();
        else if(m_vertex[i].getXPosition() < minXVal)
            minXVal = m_vertex[i].getXPosition();
        if(m_vertex[i].getYPosition() > maxYVal)
            maxYVal = m_vertex[i].getYPosition();
        else if(m_vertex[i].getYPosition() < minYVal)
            minYVal = m_vertex[i].getYPosition();
    }


    LL.setXPosition(minXVal);
    LL.setYPosition(minYVal);

    UL.setXPosition(minXVal);
    UL.setYPosition(maxYVal);

    UR.setXPosition(maxXVal);
    UR.setYPosition(maxYVal);

    LR.setXPosition(maxXVal);
    LR.setYPosition(minYVal);

    polygon.appendVertex(LL);
    polygon.appendVertex(UL);
    polygon.appendVertex(UR);
    polygon.appendVertex(LR);

    return polygon;
}

} //end of namepsace geometry
} //end of namespace mace

template class mace::geometry::PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>>;
