/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074065 sequence
-/

namespace Sequence

@[OEIS := A074065, offset := 1, maxIndex := 74, derive := true]
def A074065 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (x + y) / (2 + y)) 2 x + x) / 4) + 1) + x) / 2

end Sequence