/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032964 sequence
-/

namespace Sequence

@[OEIS := A032964, offset := 1, maxIndex := 62, derive := true]
def A032964 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ y) (x - (2 * (2 + 4))) 1 + x

end Sequence