/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171261 sequence
-/

namespace Sequence

@[OEIS := A171261, offset := 1, maxIndex := 4, derive := true]
def A171261 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * (x + x)) / y) x (loop (λ (_x y) ↦ 1 + y) x 2)

end Sequence