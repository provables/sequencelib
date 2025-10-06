/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052645 sequence
-/

namespace Sequence

@[OEIS := A052645, offset := 0, maxIndex := 19, derive := true]
def A052645 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x _y) ↦ x + x) x 1 + x) / loop (λ (x y) ↦ x * y) x 1) + 1) % (1 + x)) * loop (λ (x y) ↦ x * y) x 2

end Sequence