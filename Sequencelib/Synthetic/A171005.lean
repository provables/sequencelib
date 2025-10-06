/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171005 sequence
-/

namespace Sequence

@[OEIS := A171005, offset := 3, maxIndex := 23, derive := true]
def A171005 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ (2 + y) * x) x (2 + (2 + x))

end Sequence