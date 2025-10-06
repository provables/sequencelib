/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130812 sequence
-/

namespace Sequence

@[OEIS := A130812, offset := 6, maxIndex := 100, derive := true]
def A130812 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| (((((loop (λ (x y) ↦ ((2 * ((x + x) + x)) / y) + x) x 1 * 2) * 2) * 2) * 2) * 2) * 2

end Sequence