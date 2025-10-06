/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053986 sequence
-/

namespace Sequence

@[OEIS := A053986, offset := 0, maxIndex := 5, derive := true]
def A053986 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) y 1 x) x x

end Sequence