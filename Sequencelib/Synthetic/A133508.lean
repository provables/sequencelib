/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133508 sequence
-/

namespace Sequence

@[OEIS := A133508, offset := 1, maxIndex := 11, derive := true]
def A133508 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((((((((1 + ((x * x) + x)) / ((2 * 2) + 1)) + 1) + x) * ((x + 1) / (1 + 2))) + 1) / 2) % 2)) x

end Sequence