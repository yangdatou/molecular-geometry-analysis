// Translate between the atomic number (z-value) of a 
// given atom and its mass.
double an2mass(int z){
    switch (z)
    {
        case  1: return 1.0080;
        case  2: return 4.0026;
        case  3: return 6.9400;
        case  4: return 9.0122;
        case  5: return 10.8100;
        case  6: return 12.0110;
        case  7: return 14.0070;
        case  8: return 15.9990;
        case  9: return 18.9984;
        case 10: return 20.1797;
        case 11: return 22.9898;
        case 12: return 24.3050;
        case 13: return 26.9815;
        case 14: return 28.0850;
        case 15: return 30.9738;
        case 16: return 32.0600;
        case 17: return 35.4500;
        case 18: return 39.9480;
        case 19: return 39.0983;
        case 20: return 40.0780;
        case 21: return 44.9559;
        case 22: return 47.8670;
        case 23: return 50.9415;
        case 24: return 51.9961;
        case 25: return 54.9380;
        case 26: return 55.8450;
        case 27: return 58.9332;
        case 28: return 58.6934;
        case 29: return 63.5460;
        case 30: return 65.3800;
        case 31: return 69.7230;
        case 32: return 72.6300;
        case 33: return 74.9216;
        case 34: return 78.9710;
        case 35: return 79.9040;
        case 36: return 83.7980;
        case 37: return 85.4678;
        case 38: return 87.6200;
        case 39: return 88.9058;
    default:
        throw "NotImplementedException";
    }
}
