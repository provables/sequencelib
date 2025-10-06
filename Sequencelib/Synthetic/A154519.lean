/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154519 sequence
-/

namespace Sequence

@[OEIS := A154519, offset := 1, maxIndex := 100, derive := true]
def A154519 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 3 * (2 * ((1 + x) * (2 + y)))) 2 x / 2

end Sequence