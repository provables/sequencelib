/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037587 sequence
-/

namespace Sequence

@[OEIS := A037587, offset := 1, maxIndex := 18, derive := true]
def A037587 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((y % 2) + (x + x) * 2) * 2) + 1) (1 + x) 0

end Sequence