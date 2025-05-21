---
usemathjax: true
---

# Contributing

We welcome contributions of new sequences, new values for existing sequences, and
theorems about them. 

## Guidelines

* Fork this repository in [Github](https://github.com/provables/sequencelib). It is an standard
  Lake project, so the general instructions for 
  [Setting Up Lean](https://lean-lang.org/documentation/setup/) apply.

* [Optional] If you want a more complete environment that can also render the website, you can
  use [Nix](https://nixos.org/) and start a fully provisioned environment with `nix develop` at the
  root level of this repository. Once in the environment, run `task -a` to list all the available
  actions.

* If you are adding a **new sequence**, please, ensure you add the definiton in the `Sequence`
  namespace. Tag the definition with the attribute `@[OEIS := ANNNNNN, offset := N]`, following
  the values given by [OEIS](https://oeis.org).  For example:
  ```lean4
  namespace Sequence

  @[OEIS := A000108, offset := 0]
  def Catalan (n : ℕ) : ℕ := sorry
  ```

* For adding proofs of new values, please, add theorems of the form:
  ```lean4
  def Catalan_three : Catalan 3 = 5 := by sorry
  ```

* For any other theorems, we strive to follow 
  Mathlib guidelines, for [naming](https://leanprover-community.github.io/contribute/naming.html) 
  and [style](https://leanprover-community.github.io/contribute/style.html).
  We do, however, welcome deviations and we accept proofs about the sequences even
  if they are not in the most general form required by Mathlib. 
    
* Before submitting a PR, please, ensure that `lake build` and `lake lint` both succeed
  (or, alternatively, `task lint` if you are in the Nix environment).
