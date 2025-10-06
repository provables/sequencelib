/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A346304 sequence
-/

namespace Sequence

@[OEIS := A346304, offset := 1, maxIndex := 55, derive := true]
def A346304 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (x % y) + y) ((2 + x) + x) 0 + 2) + x) + x

end Sequence