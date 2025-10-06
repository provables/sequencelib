/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108942 sequence
-/

namespace Sequence

@[OEIS := A108942, offset := 1, maxIndex := 11, derive := true]
def A108942 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (x % 3) + y) ((x / 2) / 2) x % 2) - x / 3) + x) + 1

end Sequence