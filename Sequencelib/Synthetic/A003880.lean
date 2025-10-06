/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003880 sequence
-/

namespace Sequence

@[OEIS := A003880, offset := 1, maxIndex := 9, derive := true]
def A003880 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + (2 + ((x / 2) + (2 + y) / x))) x 1

end Sequence