/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171554 sequence
-/

namespace Sequence

@[OEIS := A171554, offset := 1, maxIndex := 5, derive := true]
def A171554 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x y) ↦ y - x) x 1 0 - x) + 1) % loop (λ (x _y) ↦ (x * x) + 2) x 1

end Sequence