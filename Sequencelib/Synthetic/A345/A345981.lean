/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A345981 sequence
-/

namespace Sequence

@[OEIS := A345981, offset := 3, maxIndex := 13, derive := true]
def A345981 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((((((((loop (λ (x y) ↦ x + y) (x / 2) x / 2) / 2) + 1) + x) - 1) + 1) - x / 3) + x) + 1

end Sequence