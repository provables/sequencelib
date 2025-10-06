/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075841 sequence
-/

namespace Sequence

@[OEIS := A075841, offset := 1, maxIndex := 50, derive := true]
def A075841 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (x + x) 3 0

end Sequence