/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063267 sequence
-/

namespace Sequence

@[OEIS := A063267, offset := 0, maxIndex := 28, derive := true]
def A063267 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) (x + 1) 1 - x) - 2

end Sequence