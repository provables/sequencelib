/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066804 sequence
-/

namespace Sequence

@[OEIS := A066804, offset := 1, maxIndex := 36, derive := true]
def A066804 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (y * y) + x) x x * (1 + (2 + x))) + 1) - x

end Sequence