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
# A052482 sequence 
-/


namespace Sequence

@[OEIS := A052482, offset := 2, derive := true, maxIndex := 100]
def A052482 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 + y) * x) (λ (_x _y : ℤ) ↦ 0) x (1 + (2 + x)) x

end Sequence

