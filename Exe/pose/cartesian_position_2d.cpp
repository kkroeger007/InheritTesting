#include "cartesian_position_2D.h"

namespace mace{
namespace pose{

double CartesianPosition_2D::distanceBetween2D(const CartesianPosition_2D &pos) const
{
    double deltaX = this->data.getX() - pos.data.getX();
    double deltaY = this->data.getY() - pos.data.getY();
    double distance = sqrt(pow(deltaX,2) + pow(deltaY,2));
    return distance;
}

double CartesianPosition_2D::distanceTo(const CartesianPosition_2D &pos) const
{
    return this->distanceBetween2D(pos);
}

double CartesianPosition_2D::bearingTo(const CartesianPosition_2D &pos) const
{

}

CartesianPosition_2D CartesianPosition_2D::newPosition(const double &distance, const double &bearing) const
{

}


} //end of namespace pose
} //end of namespace mace
