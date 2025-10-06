/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152101 sequence
-/

namespace Sequence

@[OEIS := A152101, offset := 1, maxIndex := 16, derive := true]
def A152101 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y) ↦ x + x) (2 + (x * 2)) 2) * loop (λ (x _y) ↦ (1 + x) + x) (x + x) 1

end Sequence