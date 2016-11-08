#ifndef CCHYBRID_PROTOCOL_HPP
#define CCHYBRID_PROTOCOL_HPP

#include "sm_protocol.hpp"

class CCHybridPacket : public Packet{
  public:
    int views;
    int prop_ts;

    CCHybridPacket(){};

    virtual void serialize(std::ostream& stream)
    {
        // Serialization code
        Packet::serialize(stream);
        stream << " " << views << " " << prop_ts;
    }

    virtual void deserialize(std::istream& stream)
    {
        // Deserialization code
        Packet::deserialize(stream);
        stream >> views >> prop_ts;
    }

    virtual void serialize(std::ostringstream& stream)
    {
        // Serialization code
        Packet::serialize(stream);
        stream << " " << views << " " << prop_ts;
    }

    virtual void deserialize(std::istringstream& stream)
    {
        // Deserialization code
        Packet::deserialize(stream);
        stream >> views >> prop_ts;
    }
};
#endif // CCHYBRID_PROTOCOL_HPP
