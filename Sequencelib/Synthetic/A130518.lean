/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130518 sequence 
-/


namespace Sequence

@[OEIS := A130518, offset := 0, derive := true, maxIndex := 60]
def A130518 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y / 3) + x) x 0

end Sequence

