/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269445 sequence 
-/


namespace Sequence

@[OEIS := A269445, offset := 0, derive := true, maxIndex := 74]
def A269445 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (y / (1 + (2 * (2 + 4)))) + x) x 0

end Sequence

