/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060612 sequence
-/

namespace Sequence

@[OEIS := A060612, offset := 5, maxIndex := 8, derive := true]
def A060612 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (_x y) ↦ 2 * (2 * ((2 + y) * y))) x 1) x 0

end Sequence