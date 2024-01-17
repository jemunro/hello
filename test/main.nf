#!/usr/bin/env nextflow

import static Helpers.foo

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x you!'
    """
}

workflow {
  Channel.of(foo, 'Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
