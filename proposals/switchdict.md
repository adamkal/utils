# Dict switch case mechanism

## Abstract
In Python switch case statement does not exist. Instead suggested way is to
use `dict`s. This is problematic in case of functions. To make this problem
a bit less painful we can use decorators to create a dict like func-returning
objects.

## Examples

```python

views = switchdict()

@views['GET']
def get_func(request):
	return "Hi there!"

@views['POST']
def post_view(request):
	return "Thx for your input!"


def real_view(request):
	return views[request.method](request)

```
