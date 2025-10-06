/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190718 sequence
-/

namespace Sequence

@[OEIS := A190718, offset := 0, maxIndex := 51, derive := true]
def A190718 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (1 + y) x) ((x / 2) / 2) 1

end Sequence