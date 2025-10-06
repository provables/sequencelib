/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348005 sequence
-/

namespace Sequence

@[OEIS := A348005, offset := 1, maxIndex := 70, derive := true]
def A348005 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (y / (x + x)) + 2) (x + x) 2 + x) * 2

end Sequence