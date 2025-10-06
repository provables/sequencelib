/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271480 sequence
-/

namespace Sequence

@[OEIS := A271480, offset := 0, maxIndex := 15, derive := true]
def A271480 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ (y / 2) + x) y x) y 1 + x) x 1

end Sequence