/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173187 sequence
-/

namespace Sequence

@[OEIS := A173187, offset := 0, maxIndex := 50, derive := true]
def A173187 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (1 + y) x) x 1 * loop (λ (x _y) ↦ (x + x) + x) (x + x) 1

end Sequence