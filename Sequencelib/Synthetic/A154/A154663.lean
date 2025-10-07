/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154663 sequence
-/

namespace Sequence

@[OEIS := A154663, offset := 1, maxIndex := 6, derive := true]
def A154663 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ y - (2 * (x % y))) (x - 1) 1) x

end Sequence