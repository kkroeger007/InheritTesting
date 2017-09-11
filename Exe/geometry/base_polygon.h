#ifndef BASE_POLYGON_H
#define BASE_POLYGON_H

#include <vector>
#include <stdlib.h>
#include "geometry_helper.h"

#include "pose/cartesian_position_2D.h"
#include "pose/cartesian_position_3D.h"

namespace mace{
namespace geometry{

template <class T>
class PolygonBase
{
public:
    PolygonBase(const std::string &descriptor = "Polygon"):
        name(descriptor)
    {

    }

    PolygonBase(const std::vector<T> &vector, const std::string &descriptor = "Polygon");

    PolygonBase(const PolygonBase &copy);

    void appendVertex(const T &vertex);

    void removeVertex(const int &index);

    void replaceVector(const std::vector<T> &vector);

    void clearPolygon();

    PolygonBase getBoundingRect() const;

    size_t polygonSize() const;

    bool contains(const T &point, const bool &onLineCheck = false);

    std::vector<T> getVector()
    {
        return m_vertex;
    }

private:
    std::string name;

    std::vector<T> m_vertex;

};

} //end of namepsace geometry
} //end of namespace mace
#endif // BASE_POLYGON_H
