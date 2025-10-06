/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002301 sequence
-/

namespace Sequence

@[OEIS := A002301, offset := 3, maxIndex := 29, derive := true]
def A002301 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ ((2 + y) * x) + x) x 2

end Sequence