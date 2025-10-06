/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003773 sequence
-/

namespace Sequence

@[OEIS := A003773, offset := 1, maxIndex := 14, derive := true]
def A003773 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 1 (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (x + x) 2 1) * 2

end Sequence