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
# A039218 sequence 
-/


namespace Sequence

@[OEIS := A039218, offset := 1, derive := true, maxIndex := 50]
def A039218 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ 1 - (x % (1 + (2 + ((x / 2) % 2))))) x

end Sequence

