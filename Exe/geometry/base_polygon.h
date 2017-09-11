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
    PolygonBase() = default;

    PolygonBase(const std::vector<T> &vector);

    appendVertex(const T &vertex);

    removeVertex(const int &index);

    size_t polygonSize() const;

    void clearPolygon();

    bool contains(const T &point);


private:
    std::vector<T> m_vertex;

};

} //end of namepsace geometry
} //end of namespace mace
#endif // BASE_POLYGON_H
