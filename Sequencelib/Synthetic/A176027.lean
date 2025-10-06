/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176027 sequence
-/

namespace Sequence

@[OEIS := A176027, offset := 0, maxIndex := 100, derive := true]
def A176027 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (loop (λ (x y) ↦ x + y) x x + x) / 2

end Sequence