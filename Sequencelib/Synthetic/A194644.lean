/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194644 sequence
-/

namespace Sequence

@[OEIS := A194644, offset := 1, maxIndex := 50, derive := true]
def A194644 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x _y) ↦ (x + x) + x) (1 + x) 1 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 3 1) + 1) * 2) - 1) - 1

end Sequence