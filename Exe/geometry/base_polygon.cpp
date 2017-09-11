#include "base_polygon.h"

namespace mace{
namespace geometry {

template<class T>
PolygonBase<T>::PolygonBase(const std::vector<T> &vector)
{

}

template <class T>
PolygonBase<T>::appendVertex(const T &vertex)
{
    m_vertex.push_back(vertex);
}

template<class T>
PolygonBase<T>::removeVertex(const int &index)
{

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
}

template <>
bool PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>>::contains(const mace::pose::PositionTest<mace::pose::CartesianPosition_2D> &point)
{
    if (m_vertex.size() < 3)
        return false;

    int counter = 0;
    const size_t num = this->m_vertex.size();
    for(size_t i = 0; i < num; i++)
    {
        if(m_vertex[i].getYPosition() <= point.getYPosition())
        {
            if(m_vertex[(i+1)%num].getYPosition() > point.getYPosition())
                if(isLeftOfInf(m_vertex[i],m_vertex[(i+1)%num],point) > 0)
                    ++counter;
        }
        else{
            if(m_vertex[(i+1)%num].getYPosition() <= point.getYPosition())
                if(isLeftOfInf(m_vertex[i],m_vertex[(i+1)%num],point) < 0)
                    --counter;
        }
    }

    return counter != 0;
}

} //end of namepsace geometry
} //end of namespace mace

template class mace::geometry::PolygonBase<mace::pose::PositionTest<mace::pose::CartesianPosition_2D>>;
