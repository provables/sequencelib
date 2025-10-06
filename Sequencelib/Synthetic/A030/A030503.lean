/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A030503 sequence
-/

namespace Sequence

@[OEIS := A030503, offset := 3, maxIndex := 100, derive := true]
def A030503 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ 1 + ((y / 3) + x)) (x + x) 2

end Sequence