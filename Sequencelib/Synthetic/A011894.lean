/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011894 sequence
-/

namespace Sequence

@[OEIS := A011894, offset := 0, maxIndex := 50, derive := true]
def A011894 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x - 2) + y) y x) x x / 2

end Sequence