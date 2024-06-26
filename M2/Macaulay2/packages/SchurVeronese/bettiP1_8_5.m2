--This file computes Betti tables for P^1 for d = 8 and b = 5
A := degreesRing 2
new HashTable from {
--tb stands for Total Betti numbers
"tb"=>new HashTable from {(7,0) => 0, (6,1) => 8, (7,1) => 2, (0,0) => 6, (1,0) => 40, (0,1) => 0, (2,0) => 112, (1,1) => 0, (2,1) => 0, (3,0) => 168, (3,1) => 0, (4,0) => 140, (5,0) => 56, (4,1) => 0, (5,1) => 0, (6,0) => 0},
--mb stands for Multigraded Betti numbers
"mb"=>new HashTable from {(7,0) => 0, (6,1) => A_0^34*A_1^27+A_0^33*A_1^28+A_0^32*A_1^29+A_0^31*A_1^30+A_0^30*A_1^31+A_0^29*A_1^32+A_0^28*A_1^33+A_0^27*A_1^34, (7,1) => A_0^35*A_1^34+A_0^34*A_1^35, (0,0) => A_0^5+A_0^4*A_1+A_0^3*A_1^2+A_0^2*A_1^3+A_0*A_1^4+A_1^5, (0,1) => 0, (1,0) => A_0^12*A_1+2*A_0^11*A_1^2+3*A_0^10*A_1^3+4*A_0^9*A_1^4+5*A_0^8*A_1^5+5*A_0^7*A_1^6+5*A_0^6*A_1^7+5*A_0^5*A_1^8+4*A_0^4*A_1^9+3*A_0^3*A_1^10+2*A_0^2*A_1^11+A_0*A_1^12, (2,0) => A_0^18*A_1^3+2*A_0^17*A_1^4+4*A_0^16*A_1^5+6*A_0^15*A_1^6+8*A_0^14*A_1^7+10*A_0^13*A_1^8+12*A_0^12*A_1^9+13*A_0^11*A_1^10+13*A_0^10*A_1^11+12*A_0^9*A_1^12+10*A_0^8*A_1^13+8*A_0^7*A_1^14+6*A_0^6*A_1^15+4*A_0^5*A_1^16+2*A_0^4*A_1^17+A_0^3*A_1^18, (1,1) => 0, (2,1) => 0, (3,0) => A_0^23*A_1^6+2*A_0^22*A_1^7+4*A_0^21*A_1^8+6*A_0^20*A_1^9+9*A_0^19*A_1^10+12*A_0^18*A_1^11+15*A_0^17*A_1^12+17*A_0^16*A_1^13+18*A_0^15*A_1^14+18*A_0^14*A_1^15+17*A_0^13*A_1^16+15*A_0^12*A_1^17+12*A_0^11*A_1^18+9*A_0^10*A_1^19+6*A_0^9*A_1^20+4*A_0^8*A_1^21+2*A_0^7*A_1^22+A_0^6*A_1^23, (3,1) => 0, (4,0) => A_0^27*A_1^10+2*A_0^26*A_1^11+3*A_0^25*A_1^12+5*A_0^24*A_1^13+8*A_0^23*A_1^14+10*A_0^22*A_1^15+12*A_0^21*A_1^16+14*A_0^20*A_1^17+15*A_0^19*A_1^18+15*A_0^18*A_1^19+14*A_0^17*A_1^20+12*A_0^16*A_1^21+10*A_0^15*A_1^22+8*A_0^14*A_1^23+5*A_0^13*A_1^24+3*A_0^12*A_1^25+2*A_0^11*A_1^26+A_0^10*A_1^27, (4,1) => 0, (5,0) => A_0^30*A_1^15+A_0^29*A_1^16+2*A_0^28*A_1^17+3*A_0^27*A_1^18+4*A_0^26*A_1^19+5*A_0^25*A_1^20+6*A_0^24*A_1^21+6*A_0^23*A_1^22+6*A_0^22*A_1^23+6*A_0^21*A_1^24+5*A_0^20*A_1^25+4*A_0^19*A_1^26+3*A_0^18*A_1^27+2*A_0^17*A_1^28+A_0^16*A_1^29+A_0^15*A_1^30, (6,0) => 0, (5,1) => 0},
--sb represents the betti numbers as sums of Schur functors
"sb"=>new HashTable from {(7,0) => {}, (6,1) => {({34,27},1)}, (7,1) => {({35,34},1)}, (0,0) => {({5,0},1)}, (1,0) => {({12,1},1)}, (0,1) => {}, (2,0) => {({18,3},1)}, (1,1) => {}, (2,1) => {}, (3,0) => {({23,6},1)}, (3,1) => {}, (4,0) => {({27,10},1)}, (5,0) => {({30,15},1)}, (4,1) => {}, (5,1) => {}, (6,0) => {}},
--dw encodes the dominant weights in each entry
"dw"=>new HashTable from {(7,0) => {}, (6,1) => {{34,27}}, (7,1) => {{35,34}}, (0,0) => {{5,0}}, (1,0) => {{12,1}}, (0,1) => {}, (2,0) => {{18,3}}, (1,1) => {}, (2,1) => {}, (3,0) => {{23,6}}, (3,1) => {}, (4,0) => {{27,10}}, (5,0) => {{30,15}}, (4,1) => {}, (5,1) => {}, (6,0) => {}},
--lw encodes the lex leading weight in each entry
"lw"=>new HashTable from {(7,0) => {}, (6,1) => {34,27}, (7,1) => {35,34}, (0,0) => {5,0}, (1,0) => {12,1}, (0,1) => {}, (2,0) => {18,3}, (1,1) => {}, (2,1) => {}, (3,0) => {23,6}, (3,1) => {}, (4,0) => {27,10}, (5,0) => {30,15}, (4,1) => {}, (5,1) => {}, (6,0) => {}},
--nr encodes the number of distinct representations in each entry
"nr"=>new HashTable from {(7,0) => 0, (6,1) => 1, (7,1) => 1, (0,0) => 1, (1,0) => 1, (0,1) => 0, (2,0) => 1, (1,1) => 0, (2,1) => 0, (3,0) => 1, (3,1) => 0, (4,0) => 1, (5,0) => 1, (4,1) => 0, (5,1) => 0, (6,0) => 0},
--nrm encodes the number of representations with multiplicity in each entry
"nrm"=>new HashTable from {(7,0) => 0, (6,1) => 1, (7,1) => 1, (0,0) => 1, (1,0) => 1, (0,1) => 0, (2,0) => 1, (1,1) => 0, (2,1) => 0, (3,0) => 1, (3,1) => 0, (4,0) => 1, (5,0) => 1, (4,1) => 0, (5,1) => 0, (6,0) => 0},
--er encodes the errors in the computed multigraded Hilbert series via our Schur method in each entry
"er"=>new HashTable from {(7,0) => 0, (6,1) => 8, (7,1) => 2, (0,0) => 6, (1,0) => 40, (0,1) => 0, (2,0) => 112, (1,1) => 0, (2,1) => 0, (3,0) => 168, (3,1) => 0, (4,0) => 140, (5,0) => 56, (4,1) => 0, (5,1) => 0, (6,0) => 0},
--bs encodes the Boij-Soederberg coefficients each entry
"bs"=>{40320/1},
}
