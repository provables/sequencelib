/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323178 sequence 
-/


namespace Sequence

@[OEIS := A323178, offset := 0, derive := true, maxIndex := 34]
def A323178 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((loop (λ (x _y : ℤ) ↦ 1 + ((2 + x) * x)) 2 2 * x) * x))

end Sequence

