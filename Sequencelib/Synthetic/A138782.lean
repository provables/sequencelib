/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138782 sequence
-/

namespace Sequence

@[OEIS := A138782, offset := 1, maxIndex := 18, derive := true]
def A138782 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (x * y) + x) x (2 + ((x + x) + x)) / 2) * (1 + x)

end Sequence