/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130543 sequence 
-/


namespace Sequence

@[OEIS := A130543, offset := 0, derive := true, maxIndex := 100]
def A130543 (x : ℕ) : ℕ :=
  Int.toNat <| (1 % loop (λ (_x y : ℤ) ↦ y) (x - 2) 1)

end Sequence

