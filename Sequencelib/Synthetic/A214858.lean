/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214858 sequence
-/

namespace Sequence

@[OEIS := A214858, offset := 1, maxIndex := 58, derive := true]
def A214858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((((((((((x / 2) / 2) + x) / 2) / 2) + 1) + x) / 2) + x) + x) / 2) + x) + x) / 2) + x) + x) + 2) / 2) +
              2) +
            x) /
          2) +
        x) +
      x) +
    2) +
  2

end Sequence