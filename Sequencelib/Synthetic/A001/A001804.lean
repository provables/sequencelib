/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001804 sequence
-/

namespace Sequence

@[OEIS := A001804, offset := 2, maxIndex := 98, derive := true]
def A001804 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + x) * loop (λ (x y) ↦ (2 + y) * x) x (2 + x)

end Sequence