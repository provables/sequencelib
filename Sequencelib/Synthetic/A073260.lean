/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073260 sequence
-/

namespace Sequence

@[OEIS := A073260, offset := 1, maxIndex := 13, derive := true]
def A073260 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ (((x / 2) / 2) % 2) + y) x 1 + y) 1 x + 2) / 2) + 2

end Sequence