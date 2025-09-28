/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059944 sequence 
-/


namespace Sequence

@[OEIS := A059944, offset := 0, derive := true, maxIndex := 19]
def A059944 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (2 + loop (λ (x _y : ℤ) ↦ -x) y 1) * (x * y)) x 1

end Sequence

