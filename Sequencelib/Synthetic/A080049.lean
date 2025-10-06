/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080049 sequence
-/

namespace Sequence

@[OEIS := A080049, offset := 2, maxIndex := 23, derive := true]
def A080049 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (((y / 2) + x) * y) + x) (1 + x) 0

end Sequence