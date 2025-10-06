/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080612 sequence
-/

namespace Sequence

@[OEIS := A080612, offset := 1, maxIndex := 72, derive := true]
def A080612 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ if ((x % 2) % x) ≤ 0 then y else x) ((x - 2) - 1) 1 + x

end Sequence