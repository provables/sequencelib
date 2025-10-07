/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023798 sequence
-/

namespace Sequence

@[OEIS := A023798, offset := 1, maxIndex := 11, derive := true]
def A023798 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN
  (λ (x) ↦
    (if ((((loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) (1 + x) 1 - 1) % (1 + x)) / 2) % 2) ≤ 0 then x else 1 - 1) / 3)
  x

end Sequence