/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143058 sequence
-/

namespace Sequence

@[OEIS := A143058, offset := 1, maxIndex := 14, derive := true]
def A143058 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (2 + (x + y))) y x + y) x 1

end Sequence