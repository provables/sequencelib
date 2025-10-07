/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152627 sequence
-/

namespace Sequence

@[OEIS := A152627, offset := 0, maxIndex := 98, derive := true]
def A152627 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ (2 - x) + y) x x) (2 - x)

end Sequence