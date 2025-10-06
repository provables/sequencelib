/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063099 sequence
-/

namespace Sequence

@[OEIS := A063099, offset := 1, maxIndex := 50, derive := true]
def A063099 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ y + y) (((x - (x / 3)) + x) + x) 1 + 1

end Sequence