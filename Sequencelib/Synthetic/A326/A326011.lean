/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A326011 sequence
-/

namespace Sequence

@[OEIS := A326011, offset := 0, maxIndex := 14, derive := true]
def A326011 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x + x) (λ (_x y) ↦ y) x (1 + x) x

end Sequence