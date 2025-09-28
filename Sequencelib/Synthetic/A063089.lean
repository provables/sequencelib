/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063089 sequence 
-/


namespace Sequence

@[OEIS := A063089, offset := 1, derive := true, maxIndex := 50]
def A063089 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y : ℤ) ↦ y + y) (((x - (x / 3)) + x) + x) 1

end Sequence

