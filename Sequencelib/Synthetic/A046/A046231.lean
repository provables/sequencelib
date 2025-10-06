/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A046231 sequence
-/

namespace Sequence

@[OEIS := A046231, offset := 1, maxIndex := 18, derive := true]
def A046231 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 - x) % loop (λ (x _y) ↦ 2 * (x + x)) (x - 1) 1) + x

end Sequence