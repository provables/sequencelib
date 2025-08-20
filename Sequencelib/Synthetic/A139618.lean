/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A139618 sequence 
-/


namespace Sequence

@[OEIS := A139618, offset := 0, derive := true, maxIndex := 40]
def A139618 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + ((2 * (2 * (2 * (x * y)))) + x)) 2 x

end Sequence

