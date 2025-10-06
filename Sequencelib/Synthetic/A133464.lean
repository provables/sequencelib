/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133464 sequence
-/

namespace Sequence

@[OEIS := A133464, offset := 0, maxIndex := 37, derive := true]
def A133464 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - ((2 * (x + y)) % x)) (λ (x y) ↦ x + y) x 1 2

end Sequence