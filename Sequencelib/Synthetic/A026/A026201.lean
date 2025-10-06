/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026201 sequence
-/

namespace Sequence

@[OEIS := A026201, offset := 1, maxIndex := 61, derive := true]
def A026201 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (y - x) / 3) (x % 2) x + 1) + x

end Sequence