/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A321220 sequence 
-/


namespace Sequence

@[OEIS := A321220, offset := 0, derive := true, maxIndex := 100]
def A321220 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x _y : ℤ) ↦ x) x 2 x

end Sequence

