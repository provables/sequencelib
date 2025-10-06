/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066305 sequence
-/

namespace Sequence

@[OEIS := A066305, offset := 1, maxIndex := 6, derive := true]
def A066305 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 - x) % (1 + loop (λ (x y) ↦ x * y) x 1)

end Sequence