/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098262 sequence
-/

namespace Sequence

@[OEIS := A098262, offset := 0, maxIndex := 50, derive := true]
def A098262 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x y) ↦ x * y) 4 x + x) + y) (λ (x _y) ↦ x) (x + x) 1 0

end Sequence