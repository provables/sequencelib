/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001291 sequence

## References

- T. Gauthier; and J. Urban (2023). Learning Program Synthesis for Integer Sequences from Scratch.
  The Thirty-Seventh AAAI Conference on Artificial Intelligence (AAAI-23)
-/

namespace Sequence

@[OEIS := A001291, offset := 2, maxIndex := 5, derive := true]
def A001291 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((((((((((((((((((((((3 * (1 + (x * x))) + x) * (1 + x)) / 3) + x) * 2) + 1) + x) + x) + 2) * 2) + 1) + 2) +
                                      2) *
                                    2) +
                                  1) +
                                2) +
                              x) /
                            2) +
                          x) +
                        x) +
                      1) /
                    2) +
                  2) +
                x) *
              2) +
            1) /
          2) +
        x) +
      x) +
    1) +
  2

end Sequence