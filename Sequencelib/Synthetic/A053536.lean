/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053536 sequence
-/

namespace Sequence

@[OEIS := A053536, offset := 0, maxIndex := 100, derive := true]
def A053536 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) y 1 - (x + x) * 2) x 1

end Sequence