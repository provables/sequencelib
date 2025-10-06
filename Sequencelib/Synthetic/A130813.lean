/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130813 sequence
-/

namespace Sequence

@[OEIS := A130813, offset := 7, maxIndex := 32, derive := true]
def A130813 (n : ℕ) : ℕ :=
  let x := n - 7
  Int.toNat <| ((((((loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x 1 * 2) * 2) * 2) * 2) * 2) * 2) * 2

end Sequence