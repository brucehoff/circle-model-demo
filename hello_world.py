#
# Placeholder for a model
#

from os import getenv

def main():
	string_param = getenv('string_param')
	integer_param = getenv('integer_param')
	print(f"Hello world: string_param: {string_param}, integer_param: {integer_param}")

if __name__ == "__main__":
    main()