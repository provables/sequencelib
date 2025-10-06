/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026381 sequence
-/

namespace Sequence

@[OEIS := A026381, offset := 2, maxIndex := 100, derive := true]
def A026381 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 + loop (λ (x y) ↦ x + y) ((x / 2) + x) x) + x

end Sequence