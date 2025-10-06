/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220235 sequence
-/

namespace Sequence

@[OEIS := A220235, offset := 1, maxIndex := 100, derive := true]
def A220235 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ (x + x) + x) (1 + x) 1 + loop (λ (x _y) ↦ x + x) x 2) % (1 + x)

end Sequence