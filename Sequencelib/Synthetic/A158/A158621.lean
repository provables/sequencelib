/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158621 sequence
-/

namespace Sequence

@[OEIS := A158621, offset := 2, maxIndex := 13, derive := true]
def A158621 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (((x * y) * y) * y) + x) (2 + x) 1 / 2

end Sequence