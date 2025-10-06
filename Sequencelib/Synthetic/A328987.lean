/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A328987 sequence
-/

namespace Sequence

@[OEIS := A328987, offset := 0, maxIndex := 54, derive := true]
def A328987 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (((((y * y) + x) / (1 + x)) + y) - 1) + y) (1 + x) 0 * 2) - 1) + x

end Sequence