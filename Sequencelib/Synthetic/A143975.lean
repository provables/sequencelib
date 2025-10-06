/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143975 sequence
-/

namespace Sequence

@[OEIS := A143975, offset := 1, maxIndex := 56, derive := true]
def A143975 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 + ((x - (x / y)) + y)) x 1

end Sequence