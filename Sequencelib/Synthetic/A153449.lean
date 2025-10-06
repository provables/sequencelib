/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153449 sequence
-/

namespace Sequence

@[OEIS := A153449, offset := 0, maxIndex := 100, derive := true]
def A153449 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) - loop (λ (x y) ↦ x - y) x x) * loop (λ (x _y) ↦ 1 + (x + x)) 2 2

end Sequence