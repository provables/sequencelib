/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026393 sequence
-/

namespace Sequence

@[OEIS := A026393, offset := 2, maxIndex := 100, derive := true]
def A026393 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ x + y) (x - ((2 - x) / 2)) 1 + x) + x

end Sequence