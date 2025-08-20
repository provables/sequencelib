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
# A179054 sequence 
-/


namespace Sequence

@[OEIS := A179054, offset := 1, derive := true, maxIndex := 100]
def A179054 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((1 + x) % 4) ≤ 0 then ((x / 2) + 2) + 1 else 1

end Sequence

