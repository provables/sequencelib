/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010956 sequence
-/

namespace Sequence

@[OEIS := A010956, offset := 0, maxIndex := 38, derive := true]
def A010956 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (x * x) + x) 2 2 * x) - x) / y) - x) x 1

end Sequence