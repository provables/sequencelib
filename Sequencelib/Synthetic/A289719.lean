/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289719 sequence 
-/


namespace Sequence

@[OEIS := A289719, offset := 0, derive := true, maxIndex := 100]
def A289719 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ 2 * ((x - (x / y)) + x)) x x / 2) + 1)

end Sequence

