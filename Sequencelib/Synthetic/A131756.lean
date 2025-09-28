/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131756 sequence 
-/


namespace Sequence

@[OEIS := A131756, offset := 0, derive := true, maxIndex := 100]
def A131756 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ y - x) (x % 3) 2

end Sequence

