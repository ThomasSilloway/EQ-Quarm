#ifndef HARDCOREGHOST_DATABASE_H
#define HARDCOREGHOST_DATABASE_H

#include <cstdint>

class HardcoreGhost;

class HardcoreGhostDatabase {
public:
    // Loads a HardcoreGhost by its ID
    // Returns true if the ghost was successfully loaded, false otherwise
    static bool LoadHardcoreGhost(const std::string& ghost_name, HardcoreGhost*& loaded_ghost);
};

#endif // HARDCOREGHOST_DATABASE_H