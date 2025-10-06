/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204166 sequence
-/

namespace Sequence

@[OEIS := A204166, offset := 1, maxIndex := 99, derive := true]
def A204166 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y) ↦ (y / x) + 2) (x + x) 2) / 2

end Sequence