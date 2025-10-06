/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323383 sequence
-/

namespace Sequence

@[OEIS := A323383, offset := 1, maxIndex := 7, derive := true]
def A323383 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 % x) + y) (x - 2) 1 + x

end Sequence