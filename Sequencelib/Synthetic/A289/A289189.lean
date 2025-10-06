/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289189 sequence
-/

namespace Sequence

@[OEIS := A289189, offset := 1, maxIndex := 82, derive := true]
def A289189 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((y / (1 + x)) + 2) / x) + x) (1 + x) 1

end Sequence