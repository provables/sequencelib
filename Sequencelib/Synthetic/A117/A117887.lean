/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117887 sequence
-/

namespace Sequence

@[OEIS := A117887, offset := 1, maxIndex := 18, derive := true]
def A117887 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 + y) * x) (λ (_x y) ↦ y) y 1 y + x) x 1

end Sequence