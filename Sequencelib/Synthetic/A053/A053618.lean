/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053618 sequence
-/

namespace Sequence

@[OEIS := A053618, offset := 1, maxIndex := 100, derive := true]
def A053618 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (y - 2) x) x 1 / 2) + 1) / 2

end Sequence