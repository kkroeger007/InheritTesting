#ifndef GEOMETRY_HELPER_H
#define GEOMETRY_HELPER_H

#include "pose/cartesian_position_2D.h"
namespace mace {
namespace geometry{

inline double isLeftOfInf(const mace::pose::CartesianPosition_2D &p0,
                          const mace::pose::CartesianPosition_2D &p1,
                          const mace::pose::CartesianPosition_2D &p2)
{

    return ((p1.getXPosition() - p0.getXPosition()) * (p2.getYPosition() - p0.getYPosition()) - (p2.getXPosition() - p0.getXPosition()) * (p1.getYPosition() - p0.getYPosition()));
}

}
}

#endif // GEOMETRY_HELPER_H
