/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072259 sequence
-/

namespace Sequence

@[OEIS := A072259, offset := 0, maxIndex := 100, derive := true]
def A072259 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (_x _y) ↦ 1) (1 + x) 2 (2 * (2 + x))

end Sequence