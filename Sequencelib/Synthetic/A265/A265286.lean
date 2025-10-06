/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A265286 sequence
-/

namespace Sequence

@[OEIS := A265286, offset := 1, maxIndex := 9, derive := true]
def A265286 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x / 2) + loop (λ (_x y) ↦ y) (x - 1) 1) + x

end Sequence