/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092899 sequence 
-/


namespace Sequence

@[OEIS := A092899, offset := 0, derive := true, maxIndex := 57]
def A092899 (x : ℕ) : ℕ :=
  Int.toNat <| (((comprN (λ (x : ℤ) ↦ (x / 2) % 2) (x - 1) + x) * 2) + 1)

end Sequence

