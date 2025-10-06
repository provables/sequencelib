/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077467 sequence
-/

namespace Sequence

@[OEIS := A077467, offset := 1, maxIndex := 74, derive := true]
def A077467 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((1 + (x / loop (λ (x _y) ↦ 1 + (x * x)) 2 2)) / 2) + 1) + x) / 3) / 2) + 1) + x) / 2) + 1

end Sequence