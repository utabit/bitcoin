Utabit Core integration/staging tree
=====================================

[![Build Status](https://travis-ci.org/utabit/utabit.svg?branch=master)](https://travis-ci.org/utabit/utabit)

https://utabit.com

What is Utabit?
----------------

Utabit is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. Utabit uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. Utabit Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the Utabit Core software, see http://utabit.com/#download, or read the
[original whitepaper](http://utabit.com/?page_id=6091).


License
-------

Utabit Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/utabit/utabit/tags) are created
regularly to indicate new official, stable release versions of Utabit Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).


Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.


### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.
