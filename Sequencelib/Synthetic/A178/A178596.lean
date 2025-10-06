/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178596 sequence
-/

namespace Sequence

@[OEIS := A178596, offset := 1, maxIndex := 24, derive := true]
def A178596 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 0 2 / 2) + x) / 2) / 2) + 1) + x

end Sequence