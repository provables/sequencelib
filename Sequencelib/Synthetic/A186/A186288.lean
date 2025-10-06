/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186288 sequence
-/

namespace Sequence

@[OEIS := A186288, offset := 1, maxIndex := 100, derive := true]
def A186288 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop (λ (x _y) ↦ (x - 1) / 4) 2 x + x) / 4) + x) / 2) + x) / 2) + x) + 2

end Sequence