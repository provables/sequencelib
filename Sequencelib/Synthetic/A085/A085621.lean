/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085621 sequence
-/

namespace Sequence

@[OEIS := A085621, offset := 1, maxIndex := 12, derive := true]
def A085621 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (loop (λ (x y) ↦ ((x / 2) + x) + y) x 1 % 2) - x % 2) x

end Sequence