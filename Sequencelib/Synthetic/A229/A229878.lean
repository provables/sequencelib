/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229878 sequence
-/

namespace Sequence

@[OEIS := A229878, offset := 3, maxIndex := 8, derive := true]
def A229878 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (_x y) ↦ y - (2 % y)) x 1 - 1

end Sequence