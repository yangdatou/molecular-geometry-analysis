#include <string>

using namespace std;
 
class Molecule
{
  public:
    int natom;
    int charge;
    int *zvals;
    double **geom;
    string point_group;
    
    // Function to print the geometry of the molecule
    void print_geom();

    // Function with side effects
    void rotate(double phi);
    void translate(double x, double y, double z);

    // Function to calculate the geometric properties of the molecule
    double bond(int atom1, int atom2);
    double angle(int atom1, int atom2, int atom3);
    double torsion(int atom1, int atom2, int atom3, int atom4);
    double unit(int cart_index, int atom1, int atom2);
    
    // Constructor
    Molecule(const char *filename, int q);

    // Destructor
    ~Molecule();
};