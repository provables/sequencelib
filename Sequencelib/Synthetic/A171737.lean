/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171737 sequence
-/

namespace Sequence

@[OEIS := A171737, offset := 1, maxIndex := 6, derive := true]
def A171737 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x _y) ↦ loop (λ (x y) ↦ x + y) x 1 + ((x / 2) + x) / 2) x 1 / 2) + 2) / 2) / 2) + 2) / 2) / 2

end Sequence