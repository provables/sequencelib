/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047299 sequence
-/

namespace Sequence

@[OEIS := A047299, offset := 1, maxIndex := 57, derive := true]
def A047299 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y - (x / 2)) / 2) x 0 + x

end Sequence