/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038797 sequence
-/

namespace Sequence

@[OEIS := A038797, offset := 0, maxIndex := 50, derive := true]
def A038797 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (2 + (x + x)) 2 1 - 2) - x) - x) - loop (λ (x y) ↦ x + y) x 2

end Sequence