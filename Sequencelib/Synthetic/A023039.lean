/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023039 sequence 
-/


namespace Sequence

@[OEIS := A023039, offset := 0, derive := true, maxIndex := 50]
def A023039 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ y - (2 * (x + x))) (λ (x _y : ℤ) ↦ x) (x + x) 1 2

end Sequence

