/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140285 sequence
-/

namespace Sequence

@[OEIS := A140285, offset := 1, maxIndex := 3, derive := true]
def A140285 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop2 (λ (x y) ↦ loop (λ (x y) ↦ (x + y) * x) 2 x + y) (λ (x _y) ↦ x) x 1 0 + 2) + 2) * x) + 1) + x) + x

end Sequence