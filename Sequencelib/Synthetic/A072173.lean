/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072173 sequence
-/

namespace Sequence

@[OEIS := A072173, offset := 0, maxIndex := 100, derive := true]
def A072173 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ (2 * loop (λ (x y) ↦ x * y) (2 + 3) x) - x) (x) 1 * x) 1 (1 + (x + x))

end Sequence