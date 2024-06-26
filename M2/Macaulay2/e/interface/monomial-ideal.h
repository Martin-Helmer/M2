#ifndef _monomial_ideal_h_
#  define _monomial_ideal_h_

#  include "engine-includes.hpp"

// TODO: fix this
#  if defined(__cplusplus)
class Matrix;
class EngineMonomial;
class MonomialIdeal;
class RingElement;
#  else
typedef struct Matrix Matrix;
typedef struct EngineMonomial EngineMonomial;
typedef struct MonomialIdeal MonomialIdeal;
typedef struct RingElement RingElement;
#  endif

/**
   MonomialIdeal interface routines

   A MonomialIdeal is an immutable object, having a base ring.
   The base ring should be a polynomial ring or quotient of one.
   In case a quotient is given, the monomial ideal is considered
   to be in the commutative quotient ring whose quotient elements
   are the lead terms of the quotient polynomials.
   Each monomial ideal is represented by its minimal generators only
 */

#  if defined(__cplusplus)
extern "C" {
#  endif

engine_RawMonomialIdealOrNull IM2_MonomialIdeal_make(const Matrix *m, int n);
/* drg: connected rawMonomialIdeal*/
/* Given a matrix 'm' over an allowed base ring (as above), create the
   monomial ideal consisting of all of the lead monomials of the columns
   of 'm' which have their lead term in row 'n'.  If 'n' is out of range,
   or the ring is not allowed, NULL is returned. */

const Matrix /* or null */ *IM2_MonomialIdeal_to_matrix(const MonomialIdeal *I);
/* drg: connected rawMonomialIdealToMatrix */
/* Return a one row matrix over the base ring of I consisting
   of the monomials in I */

M2_string IM2_MonomialIdeal_to_string(const MonomialIdeal *I); /* TODO */

unsigned int rawMonomialIdealHash(const MonomialIdeal *I);
/* connected to 'hash', sequential, as it is mutable */

int IM2_MonomialIdeal_is_equal(const MonomialIdeal *I1,
                               const MonomialIdeal *I2);
/* drg: connected === */
// 1 = true, 0 = false, -1 = error

int IM2_MonomialIdeal_n_gens(const MonomialIdeal *I);
/* drg: connected rawNumgens*/
/* Returns the number of minimal generators of I */

const MonomialIdeal /* or null */ *rawRadicalMonomialIdeal(
    const MonomialIdeal *I);
/* drg: connected rawRadicalMonomialIdeal*/
/* The radical of the monomial ideal, that is, the monomial ideal
   generated by the square-free parts of the each monomial of I. */

const MonomialIdeal /* or null */ *IM2_MonomialIdeal_intersect(
    const MonomialIdeal *I,
    const MonomialIdeal *J);
/* drg: connected rawIntersect*/

const MonomialIdeal /* or null */ *rawColonMonomialIdeal1(
    const MonomialIdeal *I,
    const EngineMonomial *a);
/* drg: connected rawColon*/
/* If I = (m1, ..., mr),
   Form the monomial ideal (I : a) = (m1:a, ..., mr:a) */

const MonomialIdeal /* or null */ *rawColonMonomialIdeal2(
    const MonomialIdeal *I,
    const MonomialIdeal *J);
/* drg: connected rawColon*/
/* Form the monomial ideal (I : J) = intersect(I:m1, ..., I:mr),
   where J = (m1,...,mr) */

const MonomialIdeal /* or null */ *rawSaturateMonomialIdeal1(
    const MonomialIdeal *I,
    const EngineMonomial *a);
/* drg: connected rawSaturateMonomialIdeal*/
/* Form I:a^\infty.  IE, set every variable which occurs in 'a' to '1' in
   every generator of I. */

const MonomialIdeal /* or null */ *rawSaturateMonomialIdeal2(
    const MonomialIdeal *I,
    const MonomialIdeal *J);
/* drg: connected rawSaturateMonomialIdeal*/
/* Form (I : J^\infty) = intersect(I:m1^\infty, ..., I:mr^\infty),
   where J = (m1,...,mr). */

const MonomialIdeal /* or null */ *IM2_MonomialIdeal_borel(
    const MonomialIdeal *I);
/* drg: connected rawStronglyStableClosure*/
/* This should really be named: ..._strongly_stable.
   Form the smallest monomial ideal J containing I which is strongly stable,
   that is that:
   If m is in J, then p_ij(m) is in J,
   where p_ij(m) = x_j * (m/x_i), for j <= i, s.t. x_i | m. (Here the
   variables in the ring are x1, ..., xn */

M2_bool IM2_MonomialIdeal_is_borel(const MonomialIdeal *I);
/* drg: connected rawIsStronglyStable*/
/* This should really be named: ..._is_strongly_stable.
   Determine if I is strongly stable (see IM2_MonomialIdeal_borel for the
   definition of strongly stable */

int IM2_MonomialIdeal_codim(const MonomialIdeal *I);
/* drg: connected rawCodimension*/
/* Return the codimension of I IN THE AMBIENT POLYNOMIAL RING. */

const MonomialIdeal /* or null */ *
rawMonomialMinimalPrimes(const MonomialIdeal *I, int codim_limit, int count);
/* drg: connected */
/* RENAME THIS ROUTINE */
/* Return a monomial ideal whose generators correspond to the
   minimal primes of I of codim <= codim_limit.  If a minimal prime
   of I has the form (x_i1, ..., x_ir), then the corresponding monomial
   is x_i1 ... x_ir, i.e. the support of
   the monomial generates the monomial minimal prime.
   If 'count' is positive, only collect this number.
*/

const MonomialIdeal /* or null */ *rawMaximalIndependentSets(
    const MonomialIdeal *I,
    int count);
/* drg: connected rawMaximalIndependentSets */
/* Returns a monomial ideal where each generator encodes a maximal independent
   set of variables of I.  If 'count' is positive, only collect this number. A
   maximal independent set is encoded as a squarefree monomial of the product
   of all of the independent variables in the set. */

const RingElement /* or null */ *IM2_MonomialIdeal_Hilbert(
    const MonomialIdeal *I);
/* connected to rawHilbert */
/* This routine computes the numerator of the Hilbert series
   for coker I.  NULL is returned if the ring is not appropriate for
   computing Hilbert series, or the computation was interrupted. */

M2_arrayint rawMonomialIdealLCM(const MonomialIdeal *I);
/* connected, same name */

const MonomialIdeal /* or null */ *rawAlexanderDual(const MonomialIdeal *I,
                                                    const M2_arrayint top,
                                                    int strategy);
/* connected, same name */
/* 0 is the default, 1 is an alternate strategy */

#  if defined(__cplusplus)
}
#  endif

#endif /* _monomial_ideal_h_ */

// Local Variables:
// indent-tabs-mode: nil
// End:
