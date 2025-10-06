/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A322399 sequence
-/

namespace Sequence

@[OEIS := A322399, offset := 1, maxIndex := 5, derive := true]
def A322399 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (x * y) * y) x 1 + x * x) + x) / 2) / 2

end Sequence