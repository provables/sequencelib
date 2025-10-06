/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212347 sequence
-/

namespace Sequence

@[OEIS := A212347, offset := 5, maxIndex := 50, derive := true]
def A212347 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x) (2 + x) 0 - 1) - x) - 1) - x) + x) * (1 + x)

end Sequence