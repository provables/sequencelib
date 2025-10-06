/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162267 sequence
-/

namespace Sequence

@[OEIS := A162267, offset := 1, maxIndex := 100, derive := true]
def A162267 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (x + x)) * loop (λ (x y) ↦ x + y) (2 + x) 1) + 2

end Sequence