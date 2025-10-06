/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140233 sequence
-/

namespace Sequence

@[OEIS := A140233, offset := 1, maxIndex := 56, derive := true]
def A140233 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((((((1 + ((x / 2) + x)) / 4) + 1) + x) / 2) / 2) / 2) + x) + x) + 2) + x) + 2) + x) / 4) + x) + 2) + x) +
      2) +
    x) +
  x

end Sequence