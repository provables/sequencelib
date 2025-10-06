/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212343 sequence
-/

namespace Sequence

@[OEIS := A212343, offset := 2, maxIndex := 100, derive := true]
def A212343 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (x - 1) * loop (λ (x y) ↦ x + y) x x

end Sequence