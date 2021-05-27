/* parameters.h
Header file for the parameters to feed into the simulations for droplet impact
*/

/* Fluid properties */
// Water at 5 m/s, radius 1mm
const double RHO_R = 0.00120; // Density ratio
const double MU_R = 0.0183; // Viscosity ratio
const double REYNOLDS = 4990; // Reynolds number
const double WEBER = 342; // Weber number
const double FR = 50.5; // Froude number

/* Droplet definition */
const double DROP_VEL = -1.0; // Initial velocity of the droplet 
const double DROP_RADIUS = 1.0; // Radius of droplet
const double INITIAL_DROP_HEIGHT = 0.125; // Initial gap between drop and plate

/* Computational constants */
const int MINLEVEL = 5; // Minimum refinement level 
const int MAXLEVEL = 10; // Maximum refinement level
const double BOX_WIDTH = 3.0; // Width of the computational box
const double GFS_OUTPUT_TIMESTEP = 1e-2; // Time between gfs outputs
const double LOG_OUTPUT_TIMESTEP = 1e-3; // Time between log outputs
const double MAX_TIME = 0.4; // Hard maximum time 