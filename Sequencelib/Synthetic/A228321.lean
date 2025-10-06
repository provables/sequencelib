/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228321 sequence
-/

namespace Sequence

@[OEIS := A228321, offset := 2, maxIndex := 44, derive := true]
def A228321 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((((loop (λ (_x y) ↦ 2 + (y * 2)) ((x + x) + x) 1 + 2) + 1) * (1 + x)) + 1) + 2) + 2) + 2) + 2) + 2

end Sequence