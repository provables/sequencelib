/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A252802 sequence 
-/


namespace Sequence

@[OEIS := A252802, offset := 1, derive := true, maxIndex := 3]
def A252802 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 (x + x)

end Sequence

