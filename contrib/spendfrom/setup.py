from distutils.core import setup
setup(name='ubitspendfrom',
      version='1.0',
      description='Command-line utility for utabit "coin control"',
      author='Gavin Andresen',
      author_email='gavin@utabitfoundation.org',
      requires=['jsonrpc'],
      scripts=['spendfrom.py'],
      )
