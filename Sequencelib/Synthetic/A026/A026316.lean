/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026316 sequence
-/

namespace Sequence

@[OEIS := A026316, offset := 1, maxIndex := 59, derive := true]
def A026316 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((((((x + x) + x) + (1 + x)) / loop (λ (x _y) ↦ 1 + (x + x)) 2 2) + 1) + x) % 2) x

end Sequence