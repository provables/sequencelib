/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006134 sequence
-/

namespace Sequence

@[OEIS := A006134, offset := 0, maxIndex := 100, derive := true]
def A006134 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * ((x - (x / y)) + x)) y 1 + x) x 1

end Sequence