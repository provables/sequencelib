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
# A141425 sequence 
-/


namespace Sequence

@[OEIS := A141425, offset := 1, derive := true, maxIndex := 100]
def A141425 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((3 * (x % (2 * 3))) / 2))

end Sequence

