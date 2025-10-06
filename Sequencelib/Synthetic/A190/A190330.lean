/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190330 sequence
-/

namespace Sequence

@[OEIS := A190330, offset := 1, maxIndex := 100, derive := true]
def A190330 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ ((((y * y) / (2 + x)) + 1) + y) + y) (1 + x) 0 + x) + x) + x % 2) / 2

end Sequence