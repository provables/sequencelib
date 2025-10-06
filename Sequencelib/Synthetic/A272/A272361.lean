/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A272361 sequence
-/

namespace Sequence

@[OEIS := A272361, offset := 1, maxIndex := 44, derive := true]
def A272361 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (x + x)) * loop (λ (x _y) ↦ (1 + x) * (2 + x)) 2 2

end Sequence