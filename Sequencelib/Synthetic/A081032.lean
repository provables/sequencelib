/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081032 sequence
-/

namespace Sequence

@[OEIS := A081032, offset := 1, maxIndex := 36, derive := true]
def A081032 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((x % 2) - (x % (1 + 2)))) ((x + 2) + x)

end Sequence