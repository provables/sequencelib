/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078353 sequence
-/

namespace Sequence

@[OEIS := A078353, offset := 0, maxIndex := 6, derive := true]
def A078353 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * loop (λ (x _y) ↦ (x + x) + x) 2 x) + x) (x * x) 1

end Sequence