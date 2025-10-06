/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130811 sequence
-/

namespace Sequence

@[OEIS := A130811, offset := 5, maxIndex := 34, derive := true]
def A130811 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((((loop (λ (x y) ↦ (((2 * (x + x)) + x) / y) + x) x 1 * 2) * 2) * 2) * 2) * 2

end Sequence