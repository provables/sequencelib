/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229581 sequence
-/

namespace Sequence

@[OEIS := A229581, offset := 1, maxIndex := 100, derive := true]
def A229581 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ 2 * ((x + x) + x)) x (loop (λ (x _y) ↦ (1 + x) + x) 2 x) * 2) / 3

end Sequence