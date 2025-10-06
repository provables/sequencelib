/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242181 sequence
-/

namespace Sequence

@[OEIS := A242181, offset := 1, maxIndex := 47, derive := true]
def A242181 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((x * 2) * y) + y) 3 x + x) + x

end Sequence