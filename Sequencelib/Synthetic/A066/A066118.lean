/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066118 sequence
-/

namespace Sequence

@[OEIS := A066118, offset := 1, maxIndex := 98, derive := true]
def A066118 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x * y) + x) x (2 + ((x + x) + x)) / 2

end Sequence