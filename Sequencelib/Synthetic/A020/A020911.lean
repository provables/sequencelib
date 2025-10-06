/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020911 sequence
-/

namespace Sequence

@[OEIS := A020911, offset := 1, maxIndex := 70, derive := true]
def A020911 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (_x y) ↦ y) (x - 2) 1 - (x / 2) / 2) + x) / 4) + 1

end Sequence