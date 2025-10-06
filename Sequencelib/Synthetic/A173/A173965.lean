/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173965 sequence
-/

namespace Sequence

@[OEIS := A173965, offset := 1, maxIndex := 40, derive := true]
def A173965 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (x + x)) * loop (λ (x y) ↦ x + y) x 2

end Sequence