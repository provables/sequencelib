/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159739 sequence
-/

namespace Sequence

@[OEIS := A159739, offset := 2, maxIndex := 99, derive := true]
def A159739 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 * (2 * (2 * loop (λ (x _y) ↦ (x + x) + x) (x + x) (2 + x)))

end Sequence