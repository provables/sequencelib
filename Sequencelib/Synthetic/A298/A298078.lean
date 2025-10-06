/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A298078 sequence
-/

namespace Sequence

@[OEIS := A298078, offset := 1, maxIndex := 100, derive := true]
def A298078 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((((((((((((((((((((1 + (2 + 4)) * ((x * x) + x)) - 1) - 2) - 2) - 2) - 2) - 2) - 2) - 2) - 2) - 2) - 2) - 2) - 2) -
                  2) -
                2) -
              2) -
            2) -
          2) -
        2) -
      2) -
    2) -
  2

end Sequence