/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086748 sequence
-/

namespace Sequence

@[OEIS := A086748, offset := 1, maxIndex := 58, derive := true]
def A086748 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((comprN (λ (x : ℤ) ↦ (((1 + ((x % (1 + 2)) * 2)) * (2 + x)) % ((2 * 2) + 1))) x + 1) * 2) - 2) - 1

end Sequence